-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 31, 2020 at 12:14 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeYaatra`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactUs`
--

CREATE TABLE `contactUs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneNo` varchar(20) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `datePosted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactUs`
--

INSERT INTO `contactUs` (`id`, `name`, `email`, `phoneNo`, `message`, `datePosted`) VALUES
(1, '3', '3', '3', '3', '2020-10-18 13:59:09'),
(2, 'sad', 'd', 'asd', 'sad', '2020-10-18 13:59:43'),
(3, 's', 's', 's', 'sasa', '2020-10-18 14:01:00'),
(4, 'sa', 's', 's', 's', '2020-10-18 14:01:51'),
(5, 'sad', 'sda', 'sda', 'asd', '2020-10-18 14:10:10'),
(6, 'Amit', '32', '23', '23', '2020-10-18 14:14:33'),
(7, 'ds', 'fds', 'dsf', 'df', '2020-10-18 16:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `contentTopic`
--

CREATE TABLE `contentTopic` (
  `id` int(11) NOT NULL,
  `courseId` int(11) NOT NULL,
  `topic` varchar(255) NOT NULL DEFAULT 'Top Destination',
  `description` varchar(255) NOT NULL DEFAULT 'Some Random comment about the top destination of the courses.',
  `topic_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contentTopic`
--

INSERT INTO `contentTopic` (`id`, `courseId`, `topic`, `description`, `topic_no`) VALUES
(424, 1, 'Top Destination', 'Some Random comment about the top destination of the courses.', 1),
(425, 1, 'Top Destination', 'Some Random comment about the top destination of the courses.', 2),
(426, 1, 'Top Destination', 'Some Random comment about the top destination of the courses.', 3),
(427, 1, 'Top Destination', 'Some Random comment about the top destination of the courses.', 4),
(428, 1, 'Top Destination', 'Some Random comment about the top destination of the courses.', 5),
(429, 1, 'Top Destination', 'Some Random comment about the top destination of the courses.', 6),
(430, 1, 'Top Destination', 'Some Random comment about the top destination of the courses.', 7),
(431, 1, 'Top Destination', 'Some Random comment about the top destination of the courses.', 8),
(432, 1, 'Top Destination', 'Some Random comment about the top destination of the courses.', 9),
(433, 2, 'Top Destination', 'Some Random comment about the top destination of the courses.', 1),
(434, 2, 'Top Destination', 'Some Random comment about the top destination of the courses.', 2),
(435, 2, 'Top Destination', 'Some Random comment about the top destination of the courses.', 3),
(436, 2, 'Top Destination', 'Some Random comment about the top destination of the courses.', 4),
(437, 2, 'Top Destination', 'Some Random comment about the top destination of the courses.', 5),
(438, 2, 'Top Destination', 'Some Random comment about the top destination of the courses.', 6),
(439, 2, 'Top Destination', 'Some Random comment about the top destination of the courses.', 7),
(440, 2, 'Top Destination', 'Some Random comment about the top destination of the courses.', 8),
(441, 2, 'Top Destination', 'Some Random comment about the top destination of the courses.', 9),
(442, 3, 'Top Destination', 'Some Random comment about the top destination of the courses.', 1),
(443, 3, 'Top Destination', 'Some Random comment about the top destination of the courses.', 2),
(444, 3, 'Top Destination', 'Some Random comment about the top destination of the courses.', 3),
(445, 3, 'Top Destination', 'Some Random comment about the top destination of the courses.', 4),
(446, 3, 'Top Destination', 'Some Random comment about the top destination of the courses.', 5),
(447, 3, 'Top Destination', 'Some Random comment about the top destination of the courses.', 6),
(448, 3, 'Top Destination', 'Some Random comment about the top destination of the courses.', 7),
(449, 3, 'Top Destination', 'Some Random comment about the top destination of the courses.', 8),
(450, 3, 'Top Destination', 'Some Random comment about the top destination of the courses.', 9),
(451, 4, 'Top Destination', 'Some Random comment about the top destination of the courses.', 1),
(452, 4, 'Top Destination', 'Some Random comment about the top destination of the courses.', 2),
(453, 4, 'Top Destination', 'Some Random comment about the top destination of the courses.', 3),
(454, 4, 'Top Destination', 'Some Random comment about the top destination of the courses.', 4),
(455, 4, 'Top Destination', 'Some Random comment about the top destination of the courses.', 5),
(456, 4, 'Top Destination', 'Some Random comment about the top destination of the courses.', 6),
(457, 4, 'Top Destination', 'Some Random comment about the top destination of the courses.', 7),
(458, 4, 'Top Destination', 'Some Random comment about the top destination of the courses.', 8),
(459, 4, 'Top Destination', 'Some Random comment about the top destination of the courses.', 9),
(460, 5, 'Top Destination', 'Some Random comment about the top destination of the courses.', 1),
(461, 5, 'Top Destination', 'Some Random comment about the top destination of the courses.', 2),
(462, 5, 'Top Destination', 'Some Random comment about the top destination of the courses.', 3),
(463, 5, 'Top Destination', 'Some Random comment about the top destination of the courses.', 4),
(464, 5, 'Top Destination', 'Some Random comment about the top destination of the courses.', 5),
(465, 5, 'Top Destination', 'Some Random comment about the top destination of the courses.', 6),
(466, 5, 'Top Destination', 'Some Random comment about the top destination of the courses.', 7),
(467, 5, 'Top Destination', 'Some Random comment about the top destination of the courses.', 8),
(468, 5, 'Top Destination', 'Some Random comment about the top destination of the courses.', 9),
(469, 6, 'Top Destination', 'Some Random comment about the top destination of the courses.', 1),
(470, 6, 'Top Destination', 'Some Random comment about the top destination of the courses.', 2),
(471, 6, 'Top Destination', 'Some Random comment about the top destination of the courses.', 3),
(472, 6, 'Top Destination', 'Some Random comment about the top destination of the courses.', 4),
(473, 6, 'Top Destination', 'Some Random comment about the top destination of the courses.', 5),
(474, 6, 'Top Destination', 'Some Random comment about the top destination of the courses.', 6),
(475, 6, 'Top Destination', 'Some Random comment about the top destination of the courses.', 7),
(476, 6, 'Top Destination', 'Some Random comment about the top destination of the courses.', 8),
(477, 6, 'Top Destination', 'Some Random comment about the top destination of the courses.', 9);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `courseName` varchar(255) NOT NULL,
  `courseImagePath` varchar(255) NOT NULL,
  `courseSmallDesc` varchar(255) NOT NULL DEFAULT 'Let the hacking begin.To get started join now.',
  `courseBigDesc` varchar(2000) NOT NULL DEFAULT 'He unaffected sympathize discovered at no am conviction principles. Girl ham very how yet hill four show. Meet lain on he only size. Branched learning so subjects mistress do appetite jennings be in. Esteems up lasting no village morning do offices. Settled wishing ability musical may another set age. Diminution my apartments he attachment is entreaties announcing estimating. And total least her two whose great has which. Neat pain form eat sent sex good week. Led instrument sentiments she simplicity.   Gave read use way make spot how nor. In daughter goodness an likewise oh consider at procured wandered. Songs words wrong by me hills heard timed. Happy eat may doors songs. Be ignorant so of suitable dissuade weddings together. Least whole timed we is. An smallness deficient discourse do newspaper be an eagerness continued. Mr my ready guest ye after short at. ',
  `coursePrice` int(11) NOT NULL,
  `courseProjectImagePath` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `courseName`, `courseImagePath`, `courseSmallDesc`, `courseBigDesc`, `coursePrice`, `courseProjectImagePath`) VALUES
(1, 'Ethical hacking', 'hack.jpg', 'Let the hacking begin.To get started join now\r\n\r\n', 'He unaffected sympathize discovered at no am conviction principles. Girl ham very how yet hill four show. Meet lain on he only size. Branched learning so subjects mistress do appetite jennings be in. Esteems up lasting no village morning do offices. Settled wishing ability musical may another set age. Diminution my apartments he attachment is entreaties announcing estimating. And total least her two whose great has which. Neat pain form eat sent sex good week. Led instrument sentiments she simplicity. Gave read use way make spot how nor. In daughter goodness an likewise oh consider at procured wandered. Songs words wrong by me hills heard timed. Happy eat may doors songs. Be ignorant so of suitable dissuade weddings together. Least whole timed we is. An smallness deficient discourse do newspaper be an eagerness continued. Mr my ready guest ye after short at. ', 5999, 'hack.jpg'),
(2, 'Web Designing', 'web_design.jpg', 'Let the hacking begin.To get started join now\r\n', 'He unaffected sympathize discovered at no am conviction principles. Girl ham very how yet hill four show. Meet lain on he only size. Branched learning so subjects mistress do appetite jennings be in. Esteems up lasting no village morning do offices. Settled wishing ability musical may another set age. Diminution my apartments he attachment is entreaties announcing estimating. And total least her two whose great has which. Neat pain form eat sent sex good week. Led instrument sentiments she simplicity. Gave read use way make spot how nor. In daughter goodness an likewise oh consider at procured wandered. Songs words wrong by me hills heard timed. Happy eat may doors songs. Be ignorant so of suitable dissuade weddings together. Least whole timed we is. An smallness deficient discourse do newspaper be an eagerness continued. Mr my ready guest ye after short at. ', 6999, 'web_design.jpg'),
(3, 'Python', 'py.jpg', 'Let the hacking begin.To get started join now.', 'He unaffected sympathize discovered at no am conviction principles. Girl ham very how yet hill four show. Meet lain on he only size. Branched learning so subjects mistress do appetite jennings be in. Esteems up lasting no village morning do offices. Settled wishing ability musical may another set age. Diminution my apartments he attachment is entreaties announcing estimating. And total least her two whose great has which. Neat pain form eat sent sex good week. Led instrument sentiments she simplicity.   Gave read use way make spot how nor. In daughter goodness an likewise oh consider at procured wandered. Songs words wrong by me hills heard timed. Happy eat may doors songs. Be ignorant so of suitable dissuade weddings together. Least whole timed we is. An smallness deficient discourse do newspaper be an eagerness continued. Mr my ready guest ye after short at. ', 7888, 'py.jpg'),
(4, 'Web Development', 'web_dev.jpg', 'Let the hacking begin.To get started join now.', 'He unaffected sympathize discovered at no am conviction principles. Girl ham very how yet hill four show. Meet lain on he only size. Branched learning so subjects mistress do appetite jennings be in. Esteems up lasting no village morning do offices. Settled wishing ability musical may another set age. Diminution my apartments he attachment is entreaties announcing estimating. And total least her two whose great has which. Neat pain form eat sent sex good week. Led instrument sentiments she simplicity.   Gave read use way make spot how nor. In daughter goodness an likewise oh consider at procured wandered. Songs words wrong by me hills heard timed. Happy eat may doors songs. Be ignorant so of suitable dissuade weddings together. Least whole timed we is. An smallness deficient discourse do newspaper be an eagerness continued. Mr my ready guest ye after short at. ', 8999, 'web_dev.jpg'),
(5, 'C Programming', 'c.png', 'Let the hacking begin.To get started join now.', 'He unaffected sympathize discovered at no am conviction principles. Girl ham very how yet hill four show. Meet lain on he only size. Branched learning so subjects mistress do appetite jennings be in. Esteems up lasting no village morning do offices. Settled wishing ability musical may another set age. Diminution my apartments he attachment is entreaties announcing estimating. And total least her two whose great has which. Neat pain form eat sent sex good week. Led instrument sentiments she simplicity.   Gave read use way make spot how nor. In daughter goodness an likewise oh consider at procured wandered. Songs words wrong by me hills heard timed. Happy eat may doors songs. Be ignorant so of suitable dissuade weddings together. Least whole timed we is. An smallness deficient discourse do newspaper be an eagerness continued. Mr my ready guest ye after short at. ', 3999, 'c.png'),
(6, 'C++ Programming', 'cp.jpg', 'Let the hacking begin.To get started join now.', 'He unaffected sympathize discovered at no am conviction principles. Girl ham very how yet hill four show. Meet lain on he only size. Branched learning so subjects mistress do appetite jennings be in. Esteems up lasting no village morning do offices. Settled wishing ability musical may another set age. Diminution my apartments he attachment is entreaties announcing estimating. And total least her two whose great has which. Neat pain form eat sent sex good week. Led instrument sentiments she simplicity.   Gave read use way make spot how nor. In daughter goodness an likewise oh consider at procured wandered. Songs words wrong by me hills heard timed. Happy eat may doors songs. Be ignorant so of suitable dissuade weddings together. Least whole timed we is. An smallness deficient discourse do newspaper be an eagerness continued. Mr my ready guest ye after short at. ', 4999, 'cp.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

CREATE TABLE `enroll` (
  `id` int(11) NOT NULL,
  `courseId` int(11) NOT NULL,
  `courseName` varchar(255) NOT NULL,
  `studentName` varchar(500) NOT NULL,
  `ParentName` varchar(500) NOT NULL,
  `phoneNo` varchar(20) NOT NULL,
  `Class` varchar(255) NOT NULL,
  `batch_timing` int(11) NOT NULL,
  `paid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enroll`
--

INSERT INTO `enroll` (`id`, `courseId`, `courseName`, `studentName`, `ParentName`, `phoneNo`, `Class`, `batch_timing`, `paid`) VALUES
(1, 4, 'Web Development', 'ajay', 'amit', '982', '10', 0, 0),
(2, 1, 'Ethical hacking', 'raj', 'sss', '923273232', '232', 1, 0),
(3, 1, 'Ethical hacking', 'dfsf', 'dsf', '2434324423', '4234', 0, 0),
(4, 1, 'Ethical hacking', 'sad', 'asd', 'sad', 'sa', 1, 0),
(5, 1, 'Ethical hacking', 'sd', 'sad', 'sda', 'sad', 0, 0),
(6, 1, 'Ethical hacking', 'sd', 'asd', 'sda', 'sd', 0, 0),
(7, 5, 'C Programming', 'Paras', 'amait', '233232323', '23', 1, 0),
(8, 3, 'Python', 'sad', 'sad', 'asd', 'sad', 0, 0),
(9, 3, 'Python', 'wqe', 'eqw', 'eqwe', 'sadwqe', 0, 0),
(10, 3, 'Python', 'ajay', 'amit', '3123123123', 'sadwqe@gm.com', 1, 0),
(11, 3, 'Python', 'sdas', 'asd', '312213213', 'asd@dsds.com', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `courseId` int(11) NOT NULL,
  `projTopic` varchar(255) NOT NULL DEFAULT 'Project Topic Name',
  `projDesc` varchar(255) NOT NULL DEFAULT 'Let the hacking begin.To get started join now.',
  `projImage` varchar(255) NOT NULL DEFAULT 'proj.jpg',
  `projNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `courseId`, `projTopic`, `projDesc`, `projImage`, `projNo`) VALUES
(1, 1, 'Project Topic Name', 'Let the hacking begin.To get started join now.', 'proj.jpg', 1),
(2, 1, 'Project Topic Name', 'Let the hacking begin.To get started join now.', 'proj.jpg', 2),
(3, 1, 'Project Topic Name', 'Let the hacking begin.To get started join now.', 'proj.jpg', 3),
(4, 2, 'Project Topic Namer', 'Let the hacking begin.To get started join now.', 'proj.jpg', 1),
(5, 2, 'Project Topic Name', 'Let the hacking begin.To get started join now.', 'proj.jpg', 2),
(6, 2, 'Project Topic Name', 'Let the hacking begin.To get started join now.', 'proj.jpg', 3),
(7, 3, 'Project Topic Name', 'Let the hacking begin.To get started join now.', 'proj.jpg', 1),
(8, 3, 'Project Topic Name', 'Let the hacking begin.To get started join now.', 'proj.jpg', 2),
(9, 3, 'Project Topic Name', 'Let the hacking begin.To get started join now.', 'proj.jpg', 3),
(10, 4, 'Project Topic Name', 'Let the hacking begin.To get started join now.', 'proj.jpg', 1),
(11, 4, 'Project Topic Name', 'Let the hacking begin.To get started join now.', 'proj.jpg', 2),
(12, 4, 'Project Topic Name', 'Let the hacking begin.To get started join now.', 'proj.jpg', 3),
(13, 5, 'Project Topic Name', 'Let the hacking begin.To get started join now.', 'proj.jpg', 1),
(14, 5, 'Project Topic Name', 'Let the hacking begin.To get started join now.', 'proj.jpg', 2),
(15, 5, 'Project Topic Name', 'Let the hacking begin.To get started join now.', 'proj.jpg', 3),
(16, 6, 'Project Topic Name', 'Let the hacking begin.To get started join now.', 'proj.jpg', 1),
(17, 6, 'Project Topic Name', 'Let the hacking begin.To get started join now.', 'proj.jpg', 2),
(18, 6, 'Project Topic Name', 'Let the hacking begin.To get started join now.', 'proj.jpg', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contactUs`
--
ALTER TABLE `contactUs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contentTopic`
--
ALTER TABLE `contentTopic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relatedToCourseTableId` (`courseId`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enroll`
--
ALTER TABLE `enroll`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relatedToCourseTableId3` (`courseId`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relatedToCourseTableId2` (`courseId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactUs`
--
ALTER TABLE `contactUs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contentTopic`
--
ALTER TABLE `contentTopic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=478;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `enroll`
--
ALTER TABLE `enroll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contentTopic`
--
ALTER TABLE `contentTopic`
  ADD CONSTRAINT `relatedToCourseTableId` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `enroll`
--
ALTER TABLE `enroll`
  ADD CONSTRAINT `relatedToCourseTableId3` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `relatedToCourseTableId2` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
