package com.example.v_25.my_task;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Driver;
import java.util.ArrayList;
import java.util.List;



import android.animation.AnimatorSet;
import android.animation.AnimatorInflater;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListView;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONObject;

public class MainActivity extends Activity {
  
    protected void onCreate(Bundle savedInstanceState) {
        // TODO Auto-generated method stub
        super.onCreate(savedInstanceState);
        setContentView(R.layout.content_main);
       
        Login l = new Login();
        l.execute(new String[] { "http://dev192.com/phoenix_dev/webservice/?type=login" });

    }

    class Login extends AsyncTask<String, Void, String> {

        @Override
        protected void onPreExecute() {
            // TODO Auto-generated method stub
            super.onPreExecute();
            System.out.println("Prakash");
            // prog.setVisibility(View.VISIBLE);
        }

        @Override
        protected String doInBackground(String... urls) {
            // TODO Auto-generated method stub
            System.out.println("Prakash_background");
            String response = "";
            try {
                String url = urls[0];
                HttpClient httpClient = new DefaultHttpClient();

                HttpPost httpPost = new HttpPost(url);
                List<NameValuePair> nameValuePair = new ArrayList<NameValuePair>();
                nameValuePair.add(new BasicNameValuePair("username","yourvalue"));
                nameValuePair.add(new BasicNameValuePair("password","yourvalue#"));
               
               
                httpPost.setEntity(new UrlEncodedFormEntity(nameValuePair));
               
                HttpResponse httpresponse = httpClient.execute(httpPost);
                InputStream in = httpresponse.getEntity().getContent();
                BufferedReader br = new BufferedReader(new InputStreamReader(in));
                String s = "";
                while ((s = br.readLine()) != null) {
                    response += s;
                    System.out.print("EVENTLIST response is" + response);
                    Log.d("Login Success", "response value" + response);

                }
            } catch (Exception e) {
                // TODO Auto-generated catch block
                e.printStackTrace();

            }

            return response;
        }

        @Override
        protected void onPostExecute(String result) {

            //
            try {
                // JSONObject o=new JSONObject(result);
                JSONArray arr = new JSONArray(result);

                for (int i = 0; i < arr.length(); i++) {

                    JSONObject obj = arr.getJSONObject(i);
                    String rank = obj.getString("rank");
                    String title = obj.getString("title");

                  
              

                }

            } catch (Exception e) {

            }
        }

    }
}
