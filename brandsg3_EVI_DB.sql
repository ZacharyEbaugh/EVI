-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 12, 2022 at 07:51 PM
-- Server version: 5.7.23-23
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brandsg3_EVI_DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `event_comments`
--

CREATE TABLE `event_comments` (
  `id` int(11) NOT NULL,
  `event_type` varchar(128) NOT NULL COMMENT 'public=0, private=1, rso=2	',
  `university_name` varchar(128) NOT NULL,
  `event_name` varchar(256) NOT NULL,
  `username` varchar(128) NOT NULL,
  `comment` varchar(256) NOT NULL DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_comments`
--

INSERT INTO `event_comments` (`id`, `event_type`, `university_name`, `event_name`, `username`, `comment`) VALUES
(1, '2', 'University of Central Florida', 'Boat Parade', 'zacEbaugh', 'Test Comment'),
(2, '0', 'University of Central Florida', 'Meet and Greet', 'team', 'a'),
(3, '0', 'University of Central Florida', 'Meet and Greet', 'team', 'b'),
(4, '0', 'University of Central Florida', 'Meet and Greet', 'team', 'cc'),
(5, '0', 'University of Central Florida', 'Meet and Greet', 'team', 'd'),
(6, '0', 'University of Central Florida', 'Meet and Greet', 'team', 'e'),
(7, '0', 'University of Central Florida', 'Meet and Greet', 'team', 'f'),
(8, '0', 'University of Central Florida', 'Meet and Greet', 'team', 'h'),
(9, '0', 'Seoul National University', 'Start of Semester ', 'team', '1'),
(10, '0', 'Seoul National University', 'Start of Semester ', 'team', '2'),
(11, '0', 'Seoul National University', 'Start of Semester ', 'team', '3'),
(12, '0', 'Seoul National University', 'Start of Semester ', 'team', '4'),
(13, '0', 'Seoul National University', 'Start of Semester ', 'team', '5'),
(14, '0', 'Seoul National University', 'Start of Semester ', 'team', '6'),
(15, '2', 'University of Central Florida', 'Library Study Group', 'zacEbaugh', 'Had A great time'),
(17, '0', 'University of Central Florida', 'Meet and Greet', 'team', 'l');

-- --------------------------------------------------------

--
-- Table structure for table `event_rating`
--

CREATE TABLE `event_rating` (
  `id` int(11) NOT NULL,
  `event_type` varchar(128) NOT NULL COMMENT 'public=0, private=1, rso=2',
  `event_name` varchar(256) NOT NULL,
  `university_name` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `rate` varchar(128) NOT NULL DEFAULT '0' COMMENT '1 - 5',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '0=none yet, 1=rated'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_rating`
--

INSERT INTO `event_rating` (`id`, `event_type`, `event_name`, `university_name`, `username`, `rate`, `status`) VALUES
(1, '0', 'Meet and Greet', 'University of Central Florida', 'team', '1', 1),
(2, '0', 'Start of Semester ', 'Seoul National University', 'team', '2', 1),
(3, '2', 'Library Study Group', 'University of Central Florida', 'zacEbaugh', '4', 1),
(4, '2', 'Bobs party', 'University of Central Florida', 'team', '3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `private_events`
--

CREATE TABLE `private_events` (
  `id` int(11) NOT NULL,
  `university` varchar(128) NOT NULL,
  `name` varchar(64) NOT NULL,
  `date` date NOT NULL,
  `time_from` time NOT NULL,
  `time_to` time NOT NULL,
  `category` varchar(128) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `location` varchar(512) NOT NULL,
  `email` varchar(128) NOT NULL,
  `phone` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `private_events`
--

INSERT INTO `private_events` (`id`, `university`, `name`, `date`, `time_from`, `time_to`, `category`, `description`, `location`, `email`, `phone`) VALUES
(747, 'University of Central Florida', 'Cabinet Meeting', '2022-04-11', '09:00:00', '10:00:00', 'Uncategorized/Other', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Student Union 222: Pensacola Board Room', 'sga_pres@ucf.edu', '7276676887\n'),
(748, 'University of Central Florida', 'Get Started in Undergraduate Research Workshop', '2022-04-11', '11:30:00', '12:30:00', 'Workshop/Conference', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'UCF Downtown:: DPAC 107', 'our@ucf.edu', '(407)-882-2300\n'),
(749, 'University of Central Florida', 'Italian language chat', '2022-04-11', '11:30:00', '12:30:00', 'Academic', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Trevor Colbourn Hall: 358B', 'Brian.Barone@ucf.edu', '407-823-2472\n'),
(750, 'University of Central Florida', 'University Writing Center Drafting Lab Open Hours', '2022-04-11', '12:00:00', '16:00:00', 'Academic', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Trevor Colbourn Hall 109: Trevor Colbourn Hall 109', 'uwc@ucf.edu', '407-823-2197\n'),
(751, 'University of Central Florida', 'UNITY STAR: Safe Zone Series -LBGTQ+ 101 (DIV 033)', '2022-04-11', '12:00:00', '14:00:00', 'Workshop/Conference', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Virtual', 'diverse@ucf.edu', 'No Contact Phone'),
(752, 'University of Central Florida', 'Cultivating Discipline', '2022-04-11', '12:30:00', '13:30:00', 'Workshop/Conference', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Virtual', 'richard.dewalden@ucf.edu', '4078232811\n'),
(753, 'University of Central Florida', '25 Documents Every Person Should Have (Faculty - Staff Only)', '2022-04-11', '14:00:00', '15:00:00', 'Workshop/Conference', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Virtual', 'Benefits@ucf.edu', '407-823-2771\n'),
(754, 'University of Central Florida', 'STI Prevention and Awareness Panel', '2022-04-11', '14:00:00', '15:00:00', 'Health', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Student Union: Key West Ballroom (Room 218)', 'crystal.zavallo@ucf.edu', 'No Contact Phone'),
(755, 'University of Central Florida', 'How to Earn Money with Your Ideas', '2022-04-11', '15:00:00', '16:00:00', 'Speaker/Lecture/Seminar', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'BA1 Room 135', 'launchpad@ucf.edu', '407-823-2642\n'),
(756, 'University of Central Florida', 'NAUI Open Water SCUBA Certification', '2022-04-11', '17:00:00', '17:00:00', 'Recreation', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Outdoor Adventure Center: RWC 154', 'Katherine.Rocco@ucf.edu', 'No Contact Phone'),
(757, 'University of Central Florida', 'My Student Abroad: Parents Welcome Info Session', '2022-04-11', '18:00:00', '19:00:00', 'Tour/Open House/Information Session', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Virtual', 'james.ehmer@ucf.edu', '4078234790\n'),
(758, 'University of Central Florida', 'Stage Combat Demonstration', '2022-04-11', '18:00:00', '19:00:00', 'Entertainment', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Dr. Phillips Center for the Performing Arts Downtown', 'boxoffice@ucf.edu', 'No Contact Phone'),
(759, 'University of Central Florida', 'Level Up', '2022-04-11', '18:30:00', '20:00:00', 'Health', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'UCF Communication Sciences and Disorders Clinic: 3280 Progress Drive Suite 500', 'judee.samuels@ucf.edu', '407-488-7224\n'),
(760, 'University of Central Florida', 'Orlando Shakes presents ‘Fairview’', '2022-04-11', '19:00:00', '21:00:00', 'Entertainment', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Dr. Phillips Center for the Performing Arts Downtown', 'boxoffice@ucf.edu', 'No Contact Phone'),
(761, 'University of Central Florida', 'Al-Anon: Serenity Now', '2022-04-11', '19:00:00', '20:00:00', 'Meeting', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Health Sciences Building I: 246', 'crc@ucf.edu', 'No Contact Phone'),
(762, 'University of Central Florida', 'Knight to Shine 2022: A Musical Theatre Showcase', '2022-04-11', '19:30:00', '21:00:00', 'Entertainment', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Dr. Phillips Center for the Performing Arts Downtown', 'boxoffice@ucf.edu', 'No Contact Phone'),
(763, 'University of Central Florida', 'UNITY STAR: Inclusive Communication (DIV 053)', '2022-04-12', '01:30:00', '16:30:00', 'Workshop/Conference', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Barbara Ying Center: 140', 'diverse@ucf.edu', 'No Contact Phone'),
(764, 'University of Central Florida', 'Big Red Bus - Donate Blood Today!', '2022-04-12', '11:00:00', '18:00:00', 'Health', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'UCF Memory Mall', 'BloodDrives@ucf.edu', 'No Contact Phone'),
(765, 'University of Central Florida', 'Study Abroad 101', '2022-04-12', '11:00:00', '12:00:00', 'Tour/Open House/Information Session', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Virtual', 'james.ehmer@ucf.edu', '4078234790\n'),
(766, 'University of Central Florida', 'Planning Ahead: Developing A Plan to Study Abroad in 2023', '2022-04-12', '13:00:00', '14:00:00', 'Tour/Open House/Information Session', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'DPAC 106 UCF Downtown', 'james.ehmer@ucf.edu', '4078234790\n'),
(767, 'University of Central Florida', 'Getting Over Your Fears', '2022-04-12', '13:00:00', '14:00:00', 'Workshop/Conference', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Virtual', 'Jacob.Schlierf@ucf.edu', '4078232811\n'),
(768, 'University of Central Florida', 'Publishing Your Undergraduate Research', '2022-04-12', '13:30:00', '14:30:00', 'Workshop/Conference', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Virtual', 'our@ucf.edu', '(407)-882-2300\n'),
(769, 'University of Central Florida', 'Parental Leave - PER094 (Faculty - Staff Only)', '2022-04-12', '14:00:00', '16:00:00', 'Workshop/Conference', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Virtual', 'HRLearning@ucf.edu', '407.823.0440\n'),
(770, 'University of Central Florida', 'Pizza with PD', '2022-04-12', '14:00:00', '16:00:00', 'Social Event', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Academic Village Courtyard: Academic Village', 'Amanda.Sellers@ucf.edu', 'No Contact Phone'),
(771, 'University of Central Florida', 'Online Information Session for UCFs Bachelor of Science in Nursi', '2022-04-12', '14:00:00', '16:00:00', 'Tour/Open House/Information Session', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Virtual', 'UCFNurse@ucf.edu', '407-823-2744\n'),
(772, 'University of Central Florida', 'UCF Downtown Monthly Couponing 101', '2022-04-12', '14:30:00', '15:30:00', 'Workshop/Conference', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Downtown Campus: DPAC 455', 'Christine.Pugh@ucf.edu', '407-823-5841\n'),
(773, 'University of Central Florida', '#2 Creating Connections Networking Event', '2022-04-12', '15:00:00', '16:00:00', 'Workshop/Conference', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Student Union: The Blackstone LaunchPad', 'launchpad@ucf.edu', '407-823-2642\n'),
(774, 'University of Central Florida', 'Top 20 Errors in Writing Workshop', '2022-04-12', '16:00:00', '17:30:00', 'Academic', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Virtual', 'uwc@ucf.edu', '4078232197\n'),
(775, 'University of Central Florida', 'Spring GKT Math Study Group', '2022-04-12', '16:00:00', '17:00:00', 'Workshop/Conference', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Virtual', 'FTCEhelp@ucf.edu', 'No Contact Phone'),
(776, 'University of Central Florida', 'Architecture Showcase - Awards', '2022-04-12', '18:00:00', '19:00:00', 'Speaker/Lecture/Seminar', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Dr. Phillips Center for the Performing Arts Downtown', 'boxoffice@ucf.edu', 'No Contact Phone'),
(777, 'University of Central Florida', 'UCF New Music Ensemble', '2022-04-12', '19:00:00', '20:30:00', 'Concert/Performance', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Dr. Phillips Center for the Performing Arts Downtown', 'boxoffice@ucf.edu', 'No Contact Phone'),
(778, 'University of Central Florida', 'Alcoholics Anonymous', '2022-04-12', '19:00:00', '20:00:00', 'Meeting', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'Health Sciences Building I: 246', 'crc@ucf.edu', 'No Contact Phone'),
(779, 'University of Central Florida', 'Worship Night with Wesley at UCF', '2022-04-12', '19:30:00', '20:45:00', 'Social Event', 'Check description at https://events.ucf.edu/calendar/1/events-at-ucf/', 'FAIRWINDS Alumni Center', '19davisb@knights.ucf.edu', '(217)-853-3828\n'),
(780, 'University of Central Florida', 'Meet and Greet', '2022-04-14', '21:30:00', '22:30:00', 'Social', 'Meet your teachers', 'University of Central Florida', 'zlebaughwps@gmail.com', '1111111111'),
(781, 'University of Central Florida', 'Something', '2022-05-05', '12:00:00', '16:00:00', 'Holiday', 'something on somewhere', 'University of Central Florida', 'alfy001118@gmail.com', '111-222-3333');

-- --------------------------------------------------------

--
-- Table structure for table `public_events`
--

CREATE TABLE `public_events` (
  `id` int(11) NOT NULL,
  `university` varchar(128) NOT NULL,
  `name` varchar(256) NOT NULL,
  `date` date NOT NULL,
  `time_from` time NOT NULL,
  `time_to` time NOT NULL,
  `category` varchar(128) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `location` varchar(512) NOT NULL,
  `email` varchar(128) NOT NULL,
  `phone` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `public_events`
--

INSERT INTO `public_events` (`id`, `university`, `name`, `date`, `time_from`, `time_to`, `category`, `description`, `location`, `email`, `phone`) VALUES
(17, 'University of Central Florida', 'Meet and Greet', '2022-04-15', '14:00:00', '15:00:00', 'Social', 'Meet the Faculty', 'University of Central Florida', 'brandons0207@gmail.com', ' 111-111-1111'),
(19, 'Seoul National University', 'Start of Semester ', '2022-03-01', '08:00:00', '20:00:00', 'University', 'The first semester officially starts! Please come to the campus early just in case of traffic~', 'Seoul National University', 'alfy001118@gmail.com', '111-222-3333'),
(20, 'Harvard University', 'Ice Cream Social', '2022-04-19', '12:00:00', '15:00:00', 'Social', 'Come by and serve yourself an ice cream!', 'Harvard University', 'alfy001118@gmail.com', '111-222-3333'),
(21, 'University of Oxford', 'Oxford Cooking Competition', '2022-06-03', '08:00:00', '15:00:00', 'Social', 'Our annual Cooking Competition is coming up on June 3rd~ Please come watch hundreds of our cooking teams compete for 1st place!', 'University of Oxford', 'alfy001118@gmail.com', '111-222-3333'),
(22, 'Columbia University', 'Drinking Competition', '2022-05-02', '18:00:00', '22:00:00', 'Social', 'Unlimited sodas, flavored drinks, etc. \r\nPlease come join the fun and also take a look at the competition~', 'Columbia University', 'alfy001118@gmail.com', '111-222-3333'),
(23, 'Korea University', 'Origami Day', '2022-08-29', '12:00:00', '18:00:00', 'Social', 'Korea University or Goryeo University is hosting its first Origami competition~ Please come join and also learn a few tricks to show off to your family and friends!', 'Korea University', 'alfy001118@gmail.com', '111-222-3333'),
(24, 'University of Central Florida', 'Alfred fan club orientation', '2022-04-12', '01:00:00', '02:00:00', 'Social', 'Orientation into the best club on campus alfred fan club', 'University of Central Florida', 'zlebaughwps@gmail.com', ' 407-718-0665'),
(25, 'University of Central Florida', 'Example', '2022-04-13', '01:00:00', '04:00:00', 'Social', 'some example', 'University of Central Florida', 'alfy001118@gmail.com', '111-222-3333');

-- --------------------------------------------------------

--
-- Table structure for table `public_requests`
--

CREATE TABLE `public_requests` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(128) NOT NULL,
  `admin_email` varchar(128) NOT NULL,
  `admin_phone` varchar(128) NOT NULL,
  `university` varchar(128) NOT NULL,
  `name` varchar(256) NOT NULL COMMENT 'Event Name',
  `date` date NOT NULL,
  `time_from` time NOT NULL,
  `time_to` time NOT NULL,
  `category` varchar(128) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `location` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `public_requests`
--

INSERT INTO `public_requests` (`id`, `admin_name`, `admin_email`, `admin_phone`, `university`, `name`, `date`, `time_from`, `time_to`, `category`, `description`, `location`) VALUES
(2, 'Zachary Ebaugh', 'zlebaughwps@gmail.com', '407-718-0665', 'University of Central Florida', 'Reject event', '2022-04-12', '14:00:00', '15:00:00', 'Inappropriate event request', 'Reject this event', 'University of Central Florida');

-- --------------------------------------------------------

--
-- Table structure for table `rso_active`
--

CREATE TABLE `rso_active` (
  `id` int(11) NOT NULL,
  `super_admin_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `university` varchar(128) NOT NULL,
  `admin_name` varchar(128) NOT NULL,
  `admin_email` varchar(128) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rso_active`
--

INSERT INTO `rso_active` (`id`, `super_admin_id`, `name`, `university`, `admin_name`, `admin_email`, `description`, `status`) VALUES
(16, 22, 'Computer Science Club', 'University of Central Florida', 'Brandon Spangler', 'brandons0207@gmail.com', 'We like computers here', 0),
(17, 22, 'OH YEAH CLAN', 'University of Central Florida', 'Zachary Ebaugh', 'zlebaughwps@gmail.com', 'Testing for oh yea clan', 1),
(18, 22, 'Alfred Fan Club', 'University of Central Florida', 'Zachary Ebaugh', 'zlebaughwps@gmail.com', 'fan club of junsung yoo', 1),
(19, 22, 'Database Meeting', 'University of Central Florida', 'Zachary Ebaugh', 'zlebaughwps@gmail.com', 'Database group project', 0),
(20, 22, 'Origami Club', 'University of Central Florida', 'Zachary Ebaugh', 'zlebaughwps@gmail.com', 'Accept me', 0),
(21, 22, 'AI Club', 'University of Central Florida', 'Zachary Ebaugh', 'zlebaughwps@gmail.com', 'AI Club', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rso_events`
--

CREATE TABLE `rso_events` (
  `id` int(11) NOT NULL,
  `university` varchar(256) DEFAULT NULL,
  `rso_name` varchar(256) NOT NULL,
  `name` varchar(128) NOT NULL,
  `date` date NOT NULL,
  `time_from` time NOT NULL,
  `time_to` time NOT NULL,
  `category` varchar(128) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `location` varchar(512) NOT NULL,
  `email` varchar(128) NOT NULL,
  `phone` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rso_events`
--

INSERT INTO `rso_events` (`id`, `university`, `rso_name`, `name`, `date`, `time_from`, `time_to`, `category`, `description`, `location`, `email`, `phone`) VALUES
(12, 'University of Central Florida', 'OH YEAH CLAN', 'Bobs party', '2022-04-11', '13:00:00', '15:02:00', 'party', 'rager at boberts', '205 palm street windermere Florida ', 'zlebaughwps@gmail.com', '407-718-0665'),
(13, 'University of Central Florida', 'OH YEAH CLAN', 'Boat Parade', '2022-04-11', '18:30:00', '22:00:00', 'Social', 'Boat parade in Windermere', 'Wauseon Bay Florida', 'zlebaughwps@gmail.com', '407-718-0665'),
(14, 'University of Central Florida', 'OH YEAH CLAN', 'Library Study Group', '2022-04-12', '21:28:00', '22:28:00', 'Social', 'Study of our exams!', 'University of Central Florida', 'zlebaughwps@gmail.com', '111-111-1111');

-- --------------------------------------------------------

--
-- Table structure for table `rso_members`
--

CREATE TABLE `rso_members` (
  `id` int(11) NOT NULL,
  `member_email` varchar(128) NOT NULL,
  `rso_name` varchar(128) NOT NULL,
  `university` varchar(128) NOT NULL,
  `admin_name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rso_members`
--

INSERT INTO `rso_members` (`id`, `member_email`, `rso_name`, `university`, `admin_name`) VALUES
(106, 'brandons0207@gmail.com', 'Computer Science Club', 'University of Central Florida', 'Brandon Spangler'),
(107, 'brandons0207@gmail.com', 'Computer Science Club', 'University of Central Florida', 'Brandon Spangler'),
(108, 'brandons0207@gmail.com', 'Computer Science Club', 'University of Central Florida', 'Brandon Spangler'),
(109, 'brandons0207@gmail.com', 'Computer Science Club', 'University of Central Florida', 'Brandon Spangler'),
(117, 'brandons0207@gmail.com', 'Alfred Fan Club', 'University of Central Florida', 'Zachary Ebaugh'),
(118, 'zachary.ebaugh@gmail.com', 'Alfred Fan Club', 'University of Central Florida', 'Zachary Ebaugh'),
(119, 'alfy001118@gmail.com', 'Alfred Fan Club', 'University of Central Florida', 'Zachary Ebaugh'),
(122, 'brandons0207@gmail.com', 'Database Meeting', 'University of Central Florida', 'Zachary Ebaugh'),
(123, 'falfyro001118@gmail.com', 'Database Meeting', 'University of Central Florida', 'Zachary Ebaugh'),
(124, 'alfy001118@gmail.com', 'Database Meeting', 'University of Central Florida', 'Zachary Ebaugh'),
(127, 'brandons0207@gmail.com', 'Origami Club', 'University of Central Florida', 'Zachary Ebaugh'),
(128, 'alfy001118@gmail.com', 'Origami Club', 'University of Central Florida', 'Zachary Ebaugh'),
(140, 'eviteam4710@gmail.com', 'Computer Science Club', 'University of Central Florida', 'Brandon Spangler'),
(150, 'eviteam4710@gmail.com', 'OH YEAH CLAN', 'University of Central Florida', 'Brandon Spangler'),
(154, 'zlebaughwps@gmail.com', 'Computer Science Club', 'University of Central Florida', ''),
(157, 'eviteam4710@gmail.com', 'Database Meeting', 'University of Central Florida', 'Brandon Spangler'),
(163, 'zlebaughwps@gmail.com', 'Database Meeting', 'University of Central Florida', ''),
(165, 'zlebaughwps@gmail.com', 'AI Club', 'University of Central Florida', 'Zachary Ebaugh'),
(166, 'brandons0207@gmail.com', 'AI Club', 'University of Central Florida', 'Zachary Ebaugh'),
(167, 'alfy001118@gmail.com', 'AI Club', 'University of Central Florida', 'Zachary Ebaugh'),
(168, 'zlebaughwps@gmail.com', 'AI Club', 'University of Central Florida', 'Zachary Ebaugh'),
(169, 'zlebaughwps@gmail.com', 'AI Club', 'University of Central Florida', 'Zachary Ebaugh'),
(170, 'brandonspangler@knights.ucf.edu', 'Computer Science Club', 'University of Central Florida', '');

-- --------------------------------------------------------

--
-- Table structure for table `rso_requests`
--

CREATE TABLE `rso_requests` (
  `id` int(11) NOT NULL,
  `super_admin_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `university` varchar(128) NOT NULL,
  `admin_name` varchar(128) NOT NULL,
  `admin_email` varchar(128) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `member_one` varchar(128) NOT NULL,
  `member_two` varchar(128) NOT NULL,
  `member_three` varchar(128) NOT NULL,
  `member_four` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `universities`
--

CREATE TABLE `universities` (
  `id` int(11) NOT NULL,
  `super_admin_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `location` varchar(512) NOT NULL,
  `num_students` int(5) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `picture_name` varchar(128) DEFAULT NULL,
  `picture_link` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `universities`
--

INSERT INTO `universities` (`id`, `super_admin_id`, `name`, `location`, `num_students`, `description`, `picture_name`, `picture_link`) VALUES
(27, 22, 'University of Central Florida', 'Orlando, FL', 70406, 'The University of Central Florida is a metropolitan research university located in Orlando, one of the most visited cities in the world. UCF benefits from a diverse faculty and staff who create a welcoming environment, a high quality of life, and opportunities to grow, learn and succeed.', 'UCF', 'uploads/625132be510612.56071498.jpeg'),
(28, 22, 'Seoul National University', 'Seoul, South Korea', 27924, 'Seoul National University is a national research university located in Seoul, South Korea. It is one of the flagship Korean national universities. Founded in 1946, Seoul National University is considered the most prestigious university in South Korea.', 'SNU', 'uploads/6251e493d96fc2.42703140.jpeg'),
(29, 22, 'Harvard University', 'Cambridge, MA', 35276, 'Harvard University is a private Ivy League research university in Cambridge, Massachusetts. Founded in 1636 as Harvard College and named for its first benefactor, the Puritan clergyman John Harvard, it is the oldest institution of higher learning in the United States and among the most prestigious in the world. ', 'Harvard', 'uploads/6251e4e5290a85.19187808.jpeg'),
(30, 22, 'University of Oxford', 'Oxford, England', 25820, 'The University of Oxford is a collegiate research university in Oxford, England. There is evidence of teaching as early as 1096, making it the oldest university in the English-speaking world and the worlds second-oldest university in continuous operation.', 'Oxford', 'uploads/6251e57bc29716.77553574.jpeg'),
(31, 22, 'Columbia University', 'New York City, New York', 22801, 'Columbia University is a private Ivy League research university in New York City. Established in 1754 as Kings College on the grounds of Trinity Church in Manhattan, Columbia is the oldest institution of higher education in New York and the fifth-oldest institution of higher learning in the United States. ', 'Columbia', 'uploads/6251e5e600b7d8.75112857.jpeg'),
(32, 22, 'Korea University', 'Seoul, South Korea', 37053, 'Korea University is a private research university in Seoul, South Korea. As one of the SKY universities, it is one of the oldest and most prestigious universities in the country. For the past 5 years, it has consecutively been ranked as one of the top 100 universities in the world by the QS World University Rankings. ', 'Korea', 'uploads/6251e6f90f7870.26536661.png'),
(33, 22, 'Something University', 'Orlando, FL', 2222, 'something here ', 'something', 'uploads/62562a319b48f5.92823056.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_information`
--

CREATE TABLE `user_information` (
  `id` int(11) NOT NULL,
  `username` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `verification_code` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `verification_status` int(11) NOT NULL DEFAULT '0',
  `user_status` int(2) NOT NULL DEFAULT '0',
  `pass_reset_token` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `university_status` int(2) NOT NULL DEFAULT '0',
  `uni_id` int(128) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_information`
--

INSERT INTO `user_information` (`id`, `username`, `password`, `name`, `email`, `phone`, `date`, `verification_code`, `verification_status`, `user_status`, `pass_reset_token`, `university_status`, `uni_id`) VALUES
(22, 'team', '$2y$10$sZznHlJxsdTwUXhq4Yk.A.5ZETP9R4d3xW61LC.OfOnX3zefGfUYS', 'Zachary Ebaugh', 'eviteam4710@gmail.com', '407-718-0665', '2022-04-09 07:20:13', '22237972e8b7f38b14fa75d18515844a', 1, 2, NULL, 1, 0),
(25, 'zacEbaugh', '$2y$10$SRZVDb11trFqTlEie2IDZehoGnbVT2etLJ/QDX2fDeYNUnbiteOfq', 'Zachary Ebaugh', 'zlebaughwps@gmail.com', '407-718-0665', '2022-04-11 19:45:19', '1fde10594c5f61b8370f4b9a1a128301', 1, 1, NULL, 1, 27),
(30, 'Spangy', '$2y$10$sRXVzWiGiMmBe/hsq532UuYkfPdURwLl7VoRsGn3H2wXk5.WDqdnm', 'Brandon Spangler', 'brandons0207@gmail.com', '111-111-1111', '2022-04-10 17:01:29', 'b6cea7075801c8080acfb124165c3f8f', 1, 1, NULL, 1, 27),
(32, 'falfyro', '$2y$10$Knc8JUIX/KEJktmIYanEqeNeF7qVf963VBANy9aQaO2ndSwdxQrbC', 'Alfred Yoo', 'alfy001118@gmail.com', '111-222-3333', '2022-04-09 20:54:17', '5a387afbd6d51d6f493d8e0a29f7bd83', 1, 0, NULL, 1, 27),
(33, 'chany', '$2y$10$qXq5sC8w6VQR5YMO.FZEUO9YZYbnR10FfMUd559gz89UpP8wMOeSS', 'youngchan', 'ecker@naver.com', '111-222-3333', '2022-04-11 10:05:27', '0f6a721d797797d3a503c15b5275f286', 1, 0, '39a8790ee72aea93fbe41b254e214102', 1, 28),
(34, 'bfarrell9', '$2y$10$6DJs1eYBsYkWtFV456GXbepN8OBBurImkT/Y40vs.CubtfHtN9y/O', 'Ben Farrell', 'bfarrell9@gatech.edu', '305-587-7574', '2022-04-12 17:36:22', 'f560e530d2707f807238d79778e90615', 1, 0, NULL, 1, 27),
(35, 'Sebastian2901', '$2y$10$gzPgJzNCWR9156SlMxKujeNbAcGXhNJYbrZOCblwvKiTq0G1lC8W6', 'sebastian deodat', 'sebdeodat2901@gmail.com', '407-340-9802', '2022-04-11 20:21:05', '5e13cf76b78a1a1f1736803759d87601', 1, 0, NULL, 1, 27),
(36, 'Christine', '$2y$10$QAqRR6g3oSSdHuIxheq/ouFcpQNVhfNG/I5aGc1iJm9ttELTFdxBe', 'Christine Spangler', 'cspang@gmail.com', '111-111-1111', '2022-04-13 00:15:41', '58be14b0bfb2a19c46c4052d1fa82526', 0, 0, NULL, 0, 0),
(37, 'JD', '$2y$10$PZTuAgui.eXWyDOSVVjFeOBJUD3p1uUqAiMtxB6UWgUIp7bdKJhFu', 'JD Spangler', 'jdspang@gmail.com', '111-111-1111', '2022-04-13 00:16:00', '5a6a976fe546ff658133527cc0da41fa', 0, 0, NULL, 0, 0),
(38, 'Chris', '$2y$10$lfP8yp3yNJqkmlcLjS.NGO3cIU6GScza8CvxP1A4EcwFuClvlS/2i', 'Chris Ebaugh', 'cebaugh@gmail.com', '111-111-1111', '2022-04-13 00:16:20', '038922d9a80f1a36da74c8b532e416a5', 0, 0, NULL, 0, 0),
(39, 'zhenyan', '$2y$10$5l9oQ.QVMvFcCFK4a79egOIHeeuRLnVBgecL4YSCxOoOE3o//00De', 'zhenyan ebaugh', 'zebaugh@gmail.com', '111-111-1111', '2022-04-13 00:16:39', '1cb3336fceba33bfc88ac2a461189bfa', 0, 0, NULL, 0, 0),
(40, 'testUser', '$2y$10$XwAqT4M4T8ZSjw93WApIFu42tF14UQk.nKWb0d5ACpLuhGhwAbbti', 'Testing', 'zachary.ebaugh@gmail.com', '111-111-1111', '2022-04-13 01:24:14', '49f5d5f61f170031afe111085895ddbd', 1, 0, NULL, 1, 27),
(41, 'Brandon', '$2y$10$.yewYjV.tn0h7as5SXQ/2OJT/zyjQGd1VMpKNvmel0eOpBiApC4Xy', 'Brandon Spangler', 'brandonspangler@knights.ucf.edu', '111-111-1111', '2022-04-13 01:49:45', 'a6741e72161429b333bfdff52280c022', 1, 0, NULL, 1, 27);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event_comments`
--
ALTER TABLE `event_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_rating`
--
ALTER TABLE `event_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `private_events`
--
ALTER TABLE `private_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `public_events`
--
ALTER TABLE `public_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `public_requests`
--
ALTER TABLE `public_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rso_active`
--
ALTER TABLE `rso_active`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rso_events`
--
ALTER TABLE `rso_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rso_members`
--
ALTER TABLE `rso_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rso_requests`
--
ALTER TABLE `rso_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_information`
--
ALTER TABLE `user_information`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event_comments`
--
ALTER TABLE `event_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `event_rating`
--
ALTER TABLE `event_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `private_events`
--
ALTER TABLE `private_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=782;

--
-- AUTO_INCREMENT for table `public_events`
--
ALTER TABLE `public_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `public_requests`
--
ALTER TABLE `public_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rso_active`
--
ALTER TABLE `rso_active`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `rso_events`
--
ALTER TABLE `rso_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `rso_members`
--
ALTER TABLE `rso_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `rso_requests`
--
ALTER TABLE `rso_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `universities`
--
ALTER TABLE `universities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user_information`
--
ALTER TABLE `user_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
