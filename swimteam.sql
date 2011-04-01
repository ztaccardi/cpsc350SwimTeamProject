create database SwimTeam;
use SwimTeam;


GRANT ALL PRIVILEGES ON swimteam.* to 'user'@'localhost' IDENTIFIED BY 'user';


CREATE TABLE swimmers
(
swimmerID VARCHAR(20),
swimmerFirstName VARCHAR(20),
swimmerMiddleInitial CHAR(1),
swimmerLastName VARCHAR(20),
birthday DATE,
swimGroup VARCHAR(10)
);

CREATE TABLE families
(
familyID INT(10) NOT NULL AUTO_INCREMENT,
PRIMARY KEY (familyID),
email VARCHAR(30),
password VARCHAR(40),
parentFirstName VARCHAR(20),
parentLastName VARCHAR(20),
yearJoined INT(4),
streetAddress VARCHAR(30),
city VARCHAR(20),
state VARCHAR(20),
zip VARCHAR(20),
homePhone VARCHAR(20),
workPhone VARCHAR(20),
cellPhone VARCHAR(20),
accessLevel CHAR(1),
overallAFD DEC(8,2),
currentAFD DEC(8,2)
);

CREATE TABLE IF NOT EXISTS `giftCards` (
  `cardID` int(11) NOT NULL AUTO_INCREMENT,
  `orderFormCardID` varchar(10) NOT NULL,
  `vendor` varchar(60) NOT NULL,
  `cost` double NOT NULL DEFAULT '0',
  `percent` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`cardID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=213 ;

--
-- Dumping data for table `gift_cards`
--

INSERT INTO `giftCards` (`cardID`, `orderFormCardID`, `vendor`, `cost`, `percent`) VALUES
(1, '214', 'Applebee''s', 25, 8),
(2, '211', 'Applebee''s', 10, 8),
(3, '203', 'Arby''s', 10, 8),
(4, '234', 'Bob Evans', 20, 12),
(5, '226', 'Boston Market', 10, 12),
(6, '232', 'Bruster''s Ice Cream', 5, 8),
(7, '233', 'Burger King', 10, 4),
(8, '316', 'California Pizza Kitchen', 10, 4),
(9, '236', 'Carl''s Jrs.', 10, 9),
(10, '300', 'Cheesecake Factory', 25, 3),
(11, '302', 'Chili''s', 10, 10),
(12, '303', 'Chili''s', 25, 10),
(13, '301', 'Chipotle', 10, 10),
(14, '311', 'Chuck E. Cheese', 10, 8),
(15, '296', 'Cold Stone Creamery', 10, 8),
(16, '282', 'Cracker Barrel', 10, 9),
(17, '283', 'Cracker Barrel', 25, 9),
(18, '320', 'Dave & Buster''s', 25, 14),
(19, '325', 'Denny''s', 10, 7),
(20, '327', 'Domino''s Pizza', 10, 8),
(21, '32750', 'Dominos', 50, 8),
(22, '324', 'Dunkin Donuts', 10, 4),
(23, '374', 'Friendly''s', 25, 7),
(24, '373', 'Friendly''s', 5, 7),
(25, '350', 'Golden Corral', 25, 3),
(26, '328', 'Great Harvest Bread Company', 10, 8),
(27, '382', 'Hard Rock Cafe', 25, 8),
(28, '376', 'Hardee''s', 10, 8),
(29, '395', 'HoneyBaked Ham', 25, 15),
(30, '329', 'Islands Restaurant', 25, 8),
(31, '381', 'KFC', 5, 9),
(32, '383', 'Landry''sSeafood/RainforestCafe/ChartHouse/Saltgrass + 27 mor', 20, 10),
(33, '385', 'Logan''s RoadHouse', 25, 8),
(34, '384', 'Long John Silver''s', 5, 9),
(35, '386', 'Max & Erma''s', 10, 13),
(36, '387', 'Mimi''s Cafe', 10, 8),
(37, '38725', 'Mimi''s Cafe', 25, 8),
(38, '405', 'Noodles Restaurants', 25, 4),
(39, '401', 'O''Charley''s', 10, 13),
(40, '402', 'O''Charley''s', 25, 13),
(41, '404', 'Old Country Buffet/Ryans', 25, 8),
(42, '342', 'OliveGarden/RedLobster/LONGHORN/BahamaBreeze/CapitalGrill/Se', 10, 9),
(43, '343', 'OliveGarden/RedLobster/LONGHORN/BahamaBreeze/TheCapitalGrill', 25, 9),
(44, '408', 'OutBack/Carrabba''s/Roy''s/Bonefish/Fleming''s', 25, 9),
(45, '418', 'P.F. Chang''s China Bistro', 25, 7),
(46, '820', 'Panera Bread', 10, 9),
(47, '411', 'PaPa John''s Pizza', 10, 8),
(48, '41150', 'Papa John''s Pizza', 50, 8),
(49, '412', 'Pizza Hut', 10, 8),
(50, '441', 'Qdoba Mexican Grill', 25, 7),
(51, '44510', 'Quiznos', 10, 10.5),
(52, '450', 'Red Robin', 10, 7),
(53, '454', 'Restaurant.com value)', 20, 50),
(54, '462', 'Ruby Tuesday', 10, 8),
(55, '463', 'Ruby Tuesday''s', 25, 8),
(56, '531', 'Starbucks', 10, 7),
(57, '532', 'Starbucks', 25, 7),
(58, '530', 'Starbucks', 5, 7),
(59, '489', 'Steak n Shake', 10, 8),
(60, '536', 'Subway', 10, 3),
(61, '485', 'Texas RoadHouse', 10, 8),
(62, '506', 'TGIFriday''s', 10, 9),
(63, '507', 'TGIFriday''s', 25, 9),
(64, '512', 'Wendy''s', 10, 4),
(65, '581', 'Aeropostale', 25, 8),
(66, '619', 'American Eagle', 25, 8),
(67, '603', 'AutoZone', 25, 9),
(68, '633', 'Bass Pro Shops', 25, 8),
(69, '621', 'Bath & Body Works', 10, 1),
(70, '622', 'Bath & Body Works', 25, 1),
(71, '634', 'Bath and Beyond', 25, 6),
(72, '636', 'Belk', 100, 10),
(73, '635', 'Belk''s', 25, 10),
(74, '677', 'Brooks Brothers', 25, 14),
(75, '654', 'Claire''s', 10, 9),
(76, '671', 'Crate and Barrel', 25, 4),
(77, '668', 'Dick''s Sporting Goods', 25, 5),
(78, '667', 'Dillard''s', 25, 9),
(79, '673', 'Disney', 25, 2),
(80, '681', 'Eddie Bauer', 25, 7),
(81, '68425', 'Express', 25, 11),
(82, '682', 'Fashion Bug', 25, 7),
(83, '689', 'Finishline', 25, 11),
(84, '686', 'Footlocker', 25, 9),
(85, '691', 'Gap, Old Navy, Banana Republic', 25, 9),
(86, '68725', 'Guitar Center', 25, 5),
(87, '692', 'Hallmark', 25, 4),
(88, '370', 'Harry and David', 25, 11),
(89, '720', 'J Jill', 25, 9),
(90, '722', 'JCPenney', 25, 5),
(91, '724', 'JCPenneys', 100, 5),
(92, '731', 'Jo-Ann Fabrics', 20, 6),
(93, '762', 'Kmart', 25, 4),
(94, '790', 'Lord & Taylor', 25, 8),
(95, '9829', 'Macy''s', 100, 10),
(96, '829', 'Macy''s', 25, 10),
(97, '805', 'Men''s WearHouse', 25, 7),
(98, '795', 'Michael''s', 25, 4),
(99, '823', 'Payless Shoes', 10, 18),
(100, '818', 'PetSmart', 25, 4),
(101, '825', 'Pier 1 Imports', 25, 9),
(102, '817', 'Regis Salons', 25, 9),
(103, '804', 'REI Stores', 25, 8),
(104, '824', 'ROSS Dress For Less', 25, 9),
(105, '850', 'Sally Beauty', 25, 14),
(106, '833', 'Sears', 100, 4),
(107, '830', 'Sears', 25, 4),
(108, '832', 'Sears', 250, 4),
(109, '83620', 'Sephora', 20, 5),
(110, '828', 'Shoe Carnival', 25, 4),
(111, '8262', 'Sport''s Authority', 25, 8),
(112, '842', 'Sunglass Hut', 25, 9),
(113, '8525', 'Talbots Gift Card', 25, 9),
(114, '851', 'Tanger Outlet Stores', 25, 9),
(115, '863', 'The Container Store', 25, 9),
(116, '807', 'TJMaxx/Marshalls/HomeGoods/AJWright', 25, 7),
(117, '928', 'Ulta Cosmetics', 25, 4),
(118, '9892', 'Walmart', 100, 2),
(119, '9890', 'Walmart', 25, 2),
(120, '997', 'Williams & Sonoma', 25, 8),
(121, '660', 'Build-A-Bear Workshop', 25, 8),
(122, '696', 'Gymboree', 25, 13),
(123, '772', 'The Children''s Place', 25, 9),
(124, '8472', 'Toys R Us', 25, 1.5),
(125, '846', 'ToysRUs', 10, 1.5),
(126, '600', 'AMC Use Admission', 9.5, 16),
(127, '779', 'AMC Loews Cineplex', 25, 7),
(128, '925', 'Cinemark SuperSaver Ticket', 8.3, 10),
(129, '711', 'F.Y.E.', 25, 6),
(130, '698', 'Game Crazy', 25, 16),
(131, '694', 'GameStop', 25, 3),
(132, '687', 'Goodrich Quality Theaters', 10, 4),
(133, '697', 'Hollywood Video', 25, 16),
(134, '927', 'Regal/ United Artist SINGLE USE', 8.5, 11),
(135, '843', 'Showcase Cinema', 9.5, 7),
(136, '926', 'United Artists/Regal Theaters', 10, 8),
(137, '640', 'Best Buy', 100, 2),
(138, '638', 'Best Buy', 25, 2),
(139, '810', 'Office Depot', 25, 3),
(140, '811', 'Office Max', 25, 4),
(141, '838100', 'Staples', 100, 5),
(142, '839', 'Staples', 25, 5),
(143, '612', 'Amazon.com', 25, 5),
(144, '613', 'Amazon.com', 50, 5),
(145, '623', 'Art.com', 25, 8),
(146, '647', 'Dell Computers', 100, 1),
(147, '679', 'Cabela''s', 25, 11),
(148, '710', 'iTunes', 15, 4.5),
(149, '712', 'iTunes', 25, 4.5),
(150, '7972', 'Jeff Gordon Gift Card', 25, 9),
(151, '776', 'L.L.Bean', 25, 18),
(152, '768100', 'Land''s End', 100, 14),
(153, '768', 'Land''s End', 25, 14),
(154, '398', 'Omaha Steaks', 25, 10),
(155, '400', 'Omaha Steaks', 50, 10),
(156, '399', 'Omaha Steaks Boardroom Collection', 115, 15),
(157, '396', 'Omaha Steaks Chairman Collection', 85, 15),
(158, '390', 'Omaha Steaks Executive Collection', 40, 15),
(159, '391', 'Omaha Steaks President Collection', 60, 15),
(160, '802', 'Orvis Retail&Catalog/On-line', 25, 18),
(161, '814', 'Overstock.com', 25, 9),
(162, '483', 'See''s Candies 1 lb', 16.1, 18),
(163, '827', 'Shutterfly', 25, 9),
(164, '657', 'CVS Gift Card', 25, 4),
(165, '657100', 'CVS Gift Card', 100, 4),
(166, '936', 'Walgreen''s', 100, 2),
(167, '935', 'Walgreens', 25, 2),
(168, '626', 'Barnes & Noble', 10, 9),
(169, '627', 'Barnes & Noble', 25, 9),
(170, '625', 'Barnes and Noble', 5, 9),
(171, '981', 'Borders Books', 10, 9),
(172, '982', 'Borders Books', 25, 9),
(173, '599100', 'Ace Hardware', 100, 4),
(174, '599', 'Ace Hardware', 25, 4),
(175, '707', 'Home Depot', 1000, 4),
(176, '706', 'Home Depot', 500, 4),
(177, '709', 'Home Depot', 5000, 4),
(178, '704', 'Home Depot', 100, 4),
(179, '702', 'Home Depot', 25, 4),
(180, '703', 'Home Depot', 50, 4),
(181, '787', 'Lowe''s', 1000, 4),
(182, '784', 'Lowe''s', 100, 4),
(183, '782', 'Lowe''s', 25, 4),
(184, '783', 'Lowe''s', 50, 4),
(185, '786', 'Lowe''s', 500, 4),
(186, '789', 'Lowe''s', 5000, 4),
(187, '999', 'Carnival Cruise Lines', 100, 8),
(188, '1005', 'Choice Hotels', 100, 4),
(189, '674', 'Disney', 100, 2),
(190, '1020', 'Hyatt Hotels', 25, 8),
(191, '1003', 'Marriott', 100, 9),
(192, '1002', 'Marriott', 50, 9),
(193, '931', 'Advance Auto Parts', 25, 7),
(194, '962100', 'BP', 100, 1.5),
(195, '962', 'BP', 50, 1.5),
(196, '900', 'Chevron Gas', 100, 1.5),
(197, '902', 'Chevron Gas', 250, 1.5),
(198, '901', 'Chevron Gas', 50, 1.5),
(199, '953', 'Exxon/Mobil', 100, 1.5),
(200, '952', 'Exxon/Mobil', 50, 1.5),
(201, '721', 'Jiffy Lube', 25, 9),
(202, '965', 'Sheetz', 50, 3),
(203, '977', 'Shell', 100, 2.5),
(204, '976', 'Shell', 25, 2.5),
(205, '978', 'Shell', 50, 2.5),
(206, '990', 'Speedway', 100, 4),
(207, '989', 'Speedway', 50, 4),
(208, '969100', 'Sunoco', 100, 1.5),
(209, '969', 'Sunoco', 50, 1.5),
(210, '1', 'Giant', 50, 5),
(211, '2', 'Bloom/ Food Lion', 50, 5),
(212, '3', 'Kohl''s', 25, 5);