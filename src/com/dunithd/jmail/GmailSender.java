package com.dunithd.jmail;

import javax.mail.*;
import javax.mail.internet.*;
import javax.mail.internet.MimeMessage.RecipientType;

import java.util.*;

/**
 * Simple Class to send an email using JavaMail API (javax.mail) and Gmail SMTP server
 * @author Dunith Dhanushka, dunithd@gmail.com
 * @version 1.0
 */
public class GmailSender {

    private static String HOST = "smtp.gmail.com";
    private static String USER = "sundeepson@gmail.com";
    private static String PASSWORD = "Maddela5575";
    private static String PORT = "465";
    private static String TO = "rev.theodorejacob@gmail.com";

    private static String STARTTLS = "true";
    private static String AUTH = "true";
    private static String DEBUG = "true";
    private static String SOCKET_FACTORY = "javax.net.ssl.SSLSocketFactory";
    private static String SUBJECT = "Welcome to ";
    private static String TEXT = "Dear Sir,";
    
    public static synchronized void send(String emaiId,String username, String password) {
        //Use Properties object to set environment properties
        Properties props = new Properties();

        props.put("mail.smtp.host", HOST);
        props.put("mail.smtp.port", PORT);
        props.put("mail.smtp.user", USER);

        props.put("mail.smtp.auth", AUTH);
        props.put("mail.smtp.starttls.enable", STARTTLS);
        props.put("mail.smtp.debug", DEBUG);

        props.put("mail.smtp.socketFactory.port", PORT);
        props.put("mail.smtp.socketFactory.class", SOCKET_FACTORY);
        props.put("mail.smtp.socketFactory.fallback", "false");

        try {

            //Obtain the default mail session
            Session session = Session.getDefaultInstance(props, null);
            session.setDebug(true);

            //Construct the mail message
            MimeMessage message = new MimeMessage(session);
            message.setText("User name:	"+username+ "\npassword:	" +password);
            message.setHeader("From","Admin");
            message.setSender(new InternetAddress("Admin"));
            message.setHeader("Return-Path", "Admin");
            message.setSubject(SUBJECT);
            message.setFrom(new InternetAddress("Admin@localhost"));
            message.addRecipient(RecipientType.TO, new InternetAddress(emaiId));
            message.saveChanges();

            //Use Transport to deliver the message
            Transport transport = session.getTransport("smtp");
            transport.connect(HOST, USER, PASSWORD);
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static void main(String[] args) {
       GmailSender.send("rev.theodorejacob@gmail.com","dimpy","theo");
       System.out.println("Mail sent successfully!");
    }
}