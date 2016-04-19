-- phpMyAdmin SQL Dump
-- version 3.5.8.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 06, 2016 at 07:27 PM
-- Server version: 5.5.30
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `angular`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `chkin_date` date NOT NULL,
  `chkout_date` date NOT NULL,
  `extrabed` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `adults` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  `roomid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `user_name`, `chkin_date`, `chkout_date`, `extrabed`, `user_email`, `contact_no`, `adults`, `child`, `roomid`) VALUES
(1, 'muhammed', '2015-09-18', '2015-09-20', 0, 'test@test.com', '', 0, 0, 1),
(2, 'muhammed', '2015-09-18', '2015-09-19', 0, 'test@test.com', '0976543210', 0, 0, 1),
(3, 'Gani', '2015-09-17', '2015-09-20', 0, 'test@test.com', '09876543210', 0, 0, 1),
(4, 'Muhammed Gani', '2015-09-26', '2015-09-27', 0, 'demo@demo.com', '0987654321', 0, 0, 1),
(5, 'Muhammed Gani', '2015-09-19', '2015-09-20', 0, 'test@test.com', '0998765432', 0, 0, 1),
(6, 'gani', '2015-09-02', '2015-09-17', 0, 'demo@demo.com', '09876543210', 0, 0, 1),
(7, 'Gani', '2015-09-18', '2015-09-20', 0, 'demo@demo.com', '09876543210', 0, 0, 1),
(8, 'Gani', '2015-09-19', '2015-09-30', 0, 'dest@test.com', '09876543210', 0, 0, 1),
(9, 'Gani', '2015-09-18', '2015-09-26', 0, 'gani@gani.com', '09876210', 0, 0, 1),
(10, 'Muhammed gani', '2015-09-18', '2015-09-20', 0, 'th@th.com', '0987654321', 0, 0, 1),
(11, 'Muhammed Gani', '2015-09-24', '2015-09-27', 0, 'demo@demo.com', '09876543210', 0, 0, 1),
(12, 'Kumar', '2015-09-18', '2015-09-19', 0, 'Kumar@gmail.com', '09876543211', 0, 0, 1),
(13, 'Muhammed Gani', '2015-09-18', '2015-09-20', 0, 'gani@gmail.com', '0987654321', 0, 0, 1),
(14, 'LOl', '2015-09-16', '2015-09-19', 0, 'demo@demo.com', '09876543211', 0, 0, 1),
(15, 'asdfasdf', '2015-09-18', '2015-09-19', 0, 'asdfasdf@dd.com', '232341234', 0, 0, 1),
(16, 'asdfasdf', '2015-09-16', '2015-09-19', 0, 'De@de.com', '254352345', 0, 0, 1),
(17, 'Google', '2015-09-17', '2015-09-13', 0, 'muhammed@g.com', '098012313', 0, 0, 1),
(18, 'asdfas', '2015-09-18', '2015-09-20', 0, 'asdf@dfd.com', '2341243123', 0, 0, 1),
(19, 'Muthu Rajesh', '2015-09-19', '2015-09-27', 0, 'muthurajesh@vividinfoteh.com', '9876543210', 0, 0, 1),
(20, 'Muhammed gani', '2015-10-08', '2015-10-24', 0, 'muhammedgani@live.com', '9566755750', 0, 0, 1),
(21, 'muhammed', '2015-10-07', '2015-10-10', 0, 'muhammedgani@live.com', '9566755750', 0, 0, 1),
(22, 'Muhammed Gani', '0000-00-00', '0000-00-00', 0, 'muhammedgani@demo.com', '9566755750', 0, 0, 1),
(23, 'gani mobile', '2015-10-09', '2015-10-10', 0, 'muhammedgn@gmail.com', '9566755750', 0, 0, 1),
(25, 'Rt', '2015-10-08', '2015-10-09', 0, 'jinthgfd@df.com', '466788875', 0, 0, 1),
(26, 'Muthu', '2015-10-12', '2015-10-15', 0, 'muthurajesh.j@vividinfotech.com', '9941465301', 0, 0, 1),
(27, 'Muhammed gani', '0000-00-00', '0000-00-00', 0, 'muhammedgn@gmail.com', '9566755750', 0, 0, 2),
(28, '', '0000-00-00', '0000-00-00', 0, '', '', 0, 0, 1),
(29, '', '0000-00-00', '0000-00-00', 0, '', '', 0, 0, 1),
(30, '', '0000-00-00', '0000-00-00', 0, '', '', 0, 0, 1),
(31, 'muhammed', '2015-10-19', '2015-10-21', 0, 'muhammedgn@gmail.com', '98654', 0, 0, 1),
(32, 'gani', '2015-10-20', '2015-10-21', 0, 'muhammedgn@gmail.com', '9566755750', 0, 0, 1),
(33, 'weewr', '0000-00-00', '0000-00-00', 0, 'wer', 'wer', 0, 0, 1),
(34, 'qwe', '0000-00-00', '0000-00-00', 0, 'qwe', 'wq', 0, 0, 1),
(35, '', '0000-00-00', '0000-00-00', 0, '', '', 0, 0, 1),
(36, '', '0000-00-00', '0000-00-00', 0, '', '', 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `cityId` bigint(20) NOT NULL AUTO_INCREMENT,
  `stateId` bigint(20) NOT NULL,
  `countryId` bigint(20) NOT NULL,
  `cityName` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `dateCreated` int(11) NOT NULL,
  PRIMARY KEY (`cityId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `countryId` int(11) NOT NULL AUTO_INCREMENT,
  `countryName` varchar(255) NOT NULL,
  `countryCode` varchar(3) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`countryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countryId`, `countryName`, `countryCode`, `status`, `dateCreated`) VALUES
(1, 'India', 'IND', 1, '2015-06-15 09:57:30'),
(2, 'Pakistan', 'PAK', 1, '2015-06-15 11:11:19');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(100) NOT NULL,
  `duser` varchar(100) NOT NULL,
  `dphone` int(11) NOT NULL,
  `demail` varchar(150) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `dcity` varchar(100) NOT NULL,
  `dlocation` varchar(200) NOT NULL,
  `dcontact` int(11) NOT NULL,
  `vechile_number` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`id`, `dname`, `duser`, `dphone`, `demail`, `pass`, `dcity`, `dlocation`, `dcontact`, `vechile_number`) VALUES
(1, 'muhammed', 'gani', 2147483647, 'muhammedgn@gmail.com', '123456', 'chennai', 'chennai', 2147483647, ''),
(2, 'muhammed', 'gani', 2147483647, 'muhammedgn@gmail.com', '123456', 'chennai', 'chennai', 2147483647, ''),
(3, 'muhammed', 'gani', 2147483647, 'muhammedgn@gmail.comww', '123456', 'chennai', 'chennai', 2147483647, ''),
(4, 'muhammed', 'gani', 2147483647, 'muhammedgn@gmssail.comww', '123456', 'chennai', 'chennai', 2147483647, '');

-- --------------------------------------------------------

--
-- Table structure for table `driver_status`
--

CREATE TABLE IF NOT EXISTS `driver_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `driver_status`
--

INSERT INTO `driver_status` (`id`, `driver_id`, `status`) VALUES
(1, 0, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 1, 0),
(7, 2, 0),
(8, 3, 0),
(9, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `room_no` int(11) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `est` varchar(255) NOT NULL,
  `order_items` varchar(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `room_no`, `contact_no`, `est`, `order_items`, `order_date`) VALUES
(1, '', 0, '', '', ',2,1', '2015-04-07 22:27:25'),
(2, '', 0, '', '', ',2,1', '2015-04-07 22:27:25'),
(3, '', 0, '', '', ',2,1', '2015-04-07 22:27:25'),
(4, '', 0, '', '', ',2,1', '2015-04-07 22:27:25'),
(5, 'gani', 2147483647, '123', '12 :00 AM', ',2,1', '2015-04-07 22:27:25'),
(6, 'muhammed', 2147483647, '123', '12:15 AM', ',2,1', '2015-04-07 22:27:25'),
(7, 'gani', 6543210, '123', '12:00 AM', ',2,1', '2015-04-07 22:27:25'),
(8, 'gadsfa', 0, 'asdfa', 'asdf', ',2,1', '2015-04-07 22:27:25'),
(9, 'kumar', 2147483647, '123', '12 :00 AM', ',2,1', '2015-04-07 23:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE IF NOT EXISTS `restaurant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(100) NOT NULL,
  `ruser` varchar(100) NOT NULL,
  `rphone` int(11) NOT NULL,
  `remail` varchar(150) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `rcity` varchar(100) NOT NULL,
  `rlocation` varchar(200) NOT NULL,
  `rcontact` int(11) NOT NULL,
  `img_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`id`, `rname`, `ruser`, `rphone`, `remail`, `pass`, `rcity`, `rlocation`, `rcontact`, `img_path`) VALUES
(1, 'muhammed', 'muhammed', 1298989898, 'muhammedgn@gmail.com', '', 'chennai', 'chennai', 23232323, 'images/pic1.jpg'),
(2, 'muhammed', 'muhammed', 1298989898, 'muhammedgn@gmdail.com', '123456', 'chennai', 'chennai', 23232323, 'images/pic2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_menu`
--

CREATE TABLE IF NOT EXISTS `restaurant_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `img_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `restaurant_menu`
--

INSERT INTO `restaurant_menu` (`id`, `item_name`, `price`, `img_path`) VALUES
(1, 'Meals (Rice+ 2 side dish)', 125, 'images/meals.jpg'),
(2, 'Briyani', 350, 'images/biriyani.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `restaurent_status`
--

CREATE TABLE IF NOT EXISTS `restaurent_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `res_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `restaurent_status`
--

INSERT INTO `restaurent_status` (`id`, `res_id`, `status`) VALUES
(1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_name` varchar(255) NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `img_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_name`, `short_desc`, `price`, `img_path`) VALUES
(1, 'single Room', 'Welcome to single room here more facility and features are available here.', 250, 'images/pic1.jpg'),
(2, 'Double Room', 'Welcome to Double Room Here lot of facility and features available here', 350, 'images/pic2.jpg'),
(3, 'Luxury Name', 'Good Funiture and Swiming pool', 450, 'images/pic2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shopping`
--

CREATE TABLE IF NOT EXISTS `shopping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopping_item` varchar(255) NOT NULL,
  `room_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `shopping`
--

INSERT INTO `shopping` (`id`, `shopping_item`, `room_id`) VALUES
(1, ',2,1', 0),
(2, ',1,2', 0),
(3, ',1,2', 0),
(4, ',1,2', 0),
(5, ',1,2', 0),
(6, ',1,2', 0),
(7, ',1,2', 0),
(8, ',1,2', 0),
(9, ',1,2', 0),
(10, ',1,2', 0),
(11, ',2,1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `stateId` bigint(20) NOT NULL AUTO_INCREMENT,
  `countryId` bigint(20) NOT NULL,
  `stateName` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`stateId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`stateId`, `countryId`, `stateName`, `status`, `dateCreated`) VALUES
(1, 1, 'Tamil Nadu', 1, '2015-06-15 09:58:49'),
(2, 1, 'Kerala', 1, '2015-06-15 09:58:49'),
(3, 2, 'karachi', 1, '2015-06-16 11:00:54'),
(4, 2, 'Kasmir', 1, '2015-06-16 11:01:09');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `countryId` int(11) NOT NULL,
  `stateId` int(11) NOT NULL,
  `status` enum('Available','InAvailable') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `countryId`, `stateId`, `status`) VALUES
(1, 1, 2, 'Available'),
(2, 2, 3, 'InAvailable');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
