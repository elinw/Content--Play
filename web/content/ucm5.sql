-- phpMyAdmin SQL Dump
-- version 3.4.5deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 10, 2012 at 03:21 PM
-- Server version: 5.2.10
-- PHP Version: 5.3.6-13ubuntu3.3

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ucm5`
--

-- --------------------------------------------------------

--
-- Table structure for table `jos_categories`
--

CREATE TABLE IF NOT EXISTS `jos_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_id` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`content_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `jos_categories`
--

INSERT INTO `jos_categories` (`id`, `content_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `note`, `metadesc`, `metakey`, `metadata`, `hits`, `language`) VALUES
(1, 0, 0, 0, 135, 0, '', 'system', '', '', '', '', 0, '*'),
(9, 34, 1, 131, 132, 1, 'uncategorised', 'com_content', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(10, 35, 1, 129, 130, 1, 'uncategorised', 'com_banners', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(11, 36, 1, 125, 126, 1, 'uncategorised', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(12, 37, 1, 61, 62, 1, 'uncategorised', 'com_newsfeeds', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(13, 38, 1, 57, 58, 1, 'uncategorised', 'com_weblinks', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(14, 39, 1, 9, 56, 1, 'sample-data-articles', 'com_content', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(15, 40, 1, 127, 128, 1, 'sample-data-banners', 'com_banners', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(16, 41, 1, 63, 124, 1, 'sample-data-contact', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(17, 42, 1, 59, 60, 1, 'sample-data-newsfeeds', 'com_newsfeeds', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(18, 43, 1, 1, 8, 1, 'sample-data-weblinks', 'com_weblinks', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(19, 44, 14, 10, 39, 2, 'sample-data-articles/joomla', 'com_content', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(20, 45, 19, 11, 38, 3, 'sample-data-articles/joomla/extensions', 'com_content', '', '', '', '{"author":"","robots":""}', 0, '*'),
(21, 46, 20, 12, 13, 4, 'sample-data-articles/joomla/extensions/components', 'com_content', '', '', '', '{"author":"","robots":""}', 0, '*'),
(22, 47, 20, 14, 25, 4, 'sample-data-articles/joomla/extensions/modules', 'com_content', '', '', '', '{"author":"","robots":""}', 0, '*'),
(23, 48, 20, 26, 33, 4, 'sample-data-articles/joomla/extensions/templates', 'com_content', '', '', '', '{"author":"","robots":""}', 0, '*'),
(24, 49, 20, 34, 35, 4, 'sample-data-articles/joomla/extensions/languages', 'com_content', '', '', '', '{"author":"","robots":""}', 0, '*'),
(25, 50, 20, 36, 37, 4, 'sample-data-articles/joomla/extensions/plugins', 'com_content', '', '', '', '{"author":"","robots":""}', 0, '*'),
(26, 51, 14, 40, 49, 2, 'sample-data-articles/park-site', 'com_content', '', '', '', '{"page_title":"","author":"","robots":""}', 0, 'en-GB'),
(27, 52, 26, 41, 42, 3, 'sample-data-articles/park-site/park-blog', 'com_content', '', '', '', '{"author":"","robots":""}', 0, 'en-GB'),
(28, 53, 26, 43, 48, 3, 'sample-data-articles/park-site/photo-gallery', 'com_content', '', '', '', '{"page_title":"","author":"","robots":""}', 0, 'en-GB'),
(29, 54, 14, 50, 55, 2, 'sample-data-articles/fruit-shop-site', 'com_content', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(30, 55, 29, 51, 52, 3, 'sample-data-articles/fruit-shop-site/growers', 'com_content', '', '', '', '{"author":"","robots":""}', 0, '*'),
(31, 56, 18, 2, 3, 2, 'sample-data-weblinks/park-links', 'com_weblinks', '', '', '', '{"author":"","robots":""}', 0, 'en-GB'),
(32, 57, 18, 4, 7, 2, 'sample-data-weblinks/joomla-specific-links', 'com_weblinks', '', '', '', '{"author":"","robots":""}', 0, '*'),
(33, 58, 32, 5, 6, 3, 'sample-data-weblinks/joomla-specific-links/other-resources', 'com_weblinks', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(34, 59, 16, 64, 65, 2, 'sample-data-contact/park-site', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, 'en-GB'),
(35, 60, 16, 66, 123, 2, 'sample-data-contact/shop-site', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(36, 61, 35, 67, 68, 3, 'sample-data-contact/shop-site/staff', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(37, 62, 35, 69, 122, 3, 'sample-data-contact/shop-site/fruit-encyclopedia', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(38, 63, 37, 70, 71, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/a', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(39, 64, 37, 72, 73, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/b', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(40, 65, 37, 74, 75, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/c', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(41, 66, 37, 76, 77, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/d', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(42, 67, 37, 78, 79, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/e', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(43, 68, 37, 80, 81, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/f', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(44, 69, 37, 82, 83, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/g', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(45, 70, 37, 84, 85, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/h', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(46, 71, 37, 86, 87, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/i', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(47, 72, 37, 88, 89, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/j', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(48, 73, 37, 90, 91, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/k', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(49, 74, 37, 92, 93, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/l', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(50, 75, 37, 94, 95, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/m', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(51, 76, 37, 96, 97, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/n', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(52, 77, 37, 98, 99, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/o', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(53, 78, 37, 100, 101, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/p', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(54, 79, 37, 102, 103, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/q', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(55, 80, 37, 104, 105, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/r', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(56, 81, 37, 106, 107, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/s', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(57, 82, 37, 108, 109, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/t', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(58, 83, 37, 110, 111, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/u', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(59, 84, 37, 112, 113, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/v', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(60, 85, 37, 114, 115, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/w', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(61, 86, 37, 116, 117, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/x', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(62, 87, 37, 118, 119, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/y', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(63, 88, 37, 120, 121, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/z', 'com_contact', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(64, 93, 22, 15, 16, 5, 'sample-data-articles/joomla/extensions/modules/articles-modules', 'com_content', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(65, 94, 22, 17, 18, 5, 'sample-data-articles/joomla/extensions/modules/user-modules', 'com_content', '', '', '', '{"author":"","robots":""}', 0, '*'),
(66, 95, 22, 19, 20, 5, 'sample-data-articles/joomla/extensions/modules/display-modules', 'com_content', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*'),
(67, 96, 22, 21, 22, 5, 'sample-data-articles/joomla/extensions/modules/utility-modules', 'com_content', '', '', '', '{"author":"","robots":""}', 0, '*'),
(68, 97, 23, 31, 32, 5, 'sample-data-articles/joomla/extensions/templates/atomic', 'com_content', '', '', '', '{"author":"","robots":""}', 0, '*'),
(69, 98, 23, 27, 28, 5, 'sample-data-articles/joomla/extensions/templates/beez-20', 'com_content', '', '', '', '{"author":"","robots":""}', 0, '*'),
(70, 99, 23, 29, 30, 5, 'sample-data-articles/joomla/extensions/templates/beez-5', 'com_content', '', '', '', '{"author":"","robots":""}', 0, '*'),
(72, 108, 28, 44, 45, 4, 'sample-data-articles/park-site/photo-gallery/animals', 'com_content', '', '', '', '{"page_title":"","author":"","robots":""}', 0, 'en-GB'),
(73, 109, 28, 46, 47, 4, 'sample-data-articles/park-site/photo-gallery/scenery', 'com_content', '', '', '', '{"page_title":"","author":"","robots":""}', 0, 'en-GB'),
(75, 166, 22, 23, 24, 5, 'sample-data-articles/joomla/extensions/modules/navigation-modules', 'com_content', '', '', '', '{"author":"","robots":""}', 0, '*'),
(76, 167, 29, 53, 54, 3, 'sample-data-articles/fruit-shop-site/recipes', 'com_content', '', '', '', '{"author":"","robots":""}', 0, '*'),
(77, 169, 1, 133, 134, 1, 'uncategorised', 'com_users.notes', '', '', '', '{"page_title":"","author":"","robots":""}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `jos_contact_details`
--

CREATE TABLE IF NOT EXISTS `jos_contact_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `con_position` varchar(255) DEFAULT NULL,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `content_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `jos_contact_details`
--

INSERT INTO `jos_contact_details` (`id`, `con_position`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `imagepos`, `email_to`, `default_con`, `ordering`, `user_id`, `catid`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created_by_alias`, `metakey`, `metadesc`, `metadata`, `xreference`, `content_id`) VALUES
(1, 'Position', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', '<p>Information about or by the contact.</p>', 'top', 'email@example.com', 1, 1, 0, 16, '', '', 'last', 'first', 'middle', 'en-GB', '', '', '', '{"robots":"","rights":""}', '', 1501),
(2, '', '', '', '', '', '', '', '', NULL, 'webmaster@example.com', 0, 1, 0, 34, '', '', '', '', '', 'en-GB', '', '', '', '{"robots":"","rights":""}', '', 1502),
(3, '', '', '', '', '', '', '', '<p>I''m the owner of this store.</p>', NULL, '', 0, 2, 0, 36, '', '', '', '', '', '*', '', '', '', '{"robots":"","rights":""}', '', 1503),
(4, '', '', '', '', '', '', '', '<p>I am in charge of buying fruit. If you sell good fruit, contact me.</p>', NULL, '', 0, 1, 0, 36, '', '', '', '', '', '*', '', '', '', '{"robots":"","rights":""}', '', 1504),
(5, 'Scientific Name: Musa', '', 'Type: Herbaceous', 'Large Producers: India, China, Brasil', '', '', '', '<p>Bananas are a great source of potassium.</p>\r\n<p> </p>', NULL, '', 0, 1, 0, 39, '', '', '', '', '', '*', '', '', '', '{"robots":"","rights":""}', '', 1505),
(6, 'Scientific Name: Malus domestica', '', 'Family: Rosaceae', 'Large: Producers: China, United States', '', '', '', '<p>Apples are a versatile fruit, used for eating, cooking, and preserving.</p>\r\n<p>There are more that 7500 different kinds of apples grown around the world.</p>', NULL, '', 0, 1, 0, 38, '', '', '', '', '', '*', '', '', '', '{"robots":"","rights":""}', '', 1506),
(7, 'Scientific Name: Tamarindus indica', '', 'Family: Fabaceae', 'Large Producers: India, United States', '', '', '', '<p>Tamarinds are a versatile fruit used around the world. In its young form it is used in hot sauces; ripened it is the basis for many refreshing drinks.</p>\r\n<p> </p>', NULL, '', 0, 1, 0, 57, '', '', '', '', '', '*', '', '', '', '{"robots":"","rights":""}', '', 1507),
(8, '', 'Our City', 'Our Province', 'Our Country', '', '555-555-5555', '', '<p>Here are directions for how to get to our shop.</p>', NULL, '', 0, 1, 0, 35, '', '', '', '', '', '*', '', '', '', '{"robots":"","rights":""}', '', 1508);

-- --------------------------------------------------------

--
-- Table structure for table `jos_content`
--

CREATE TABLE IF NOT EXISTS `jos_content` (
  `content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `access` int(10) unsigned DEFAULT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `temporary` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned DEFAULT NULL,
  `checked_out_session` varchar(255) NOT NULL DEFAULT '',
  `checked_out_user_id` int(10) unsigned DEFAULT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `likes` int(10) unsigned NOT NULL DEFAULT '0',
  `revision` int(10) unsigned NOT NULL DEFAULT '0',
  `config` mediumtext NOT NULL,
  `media` text NOT NULL,
  `rules` text NOT NULL,
  PRIMARY KEY (`content_id`),
  KEY `type_id` (`type_id`),
  KEY `idx_visibility` (`type_id`,`state`,`access`,`publish_start_date`,`publish_end_date`),
  KEY `idx_visibility_created` (`type_id`,`state`,`access`,`publish_start_date`,`publish_end_date`,`created_date`),
  KEY `idx_visibility_modified` (`type_id`,`state`,`access`,`publish_start_date`,`publish_end_date`,`modified_date`),
  KEY `idx_visibility_likes` (`type_id`,`state`,`access`,`publish_start_date`,`publish_end_date`,`likes`),
  KEY `modified_user_id` (`modified_user_id`),
  KEY `checked_out_user_id` (`checked_out_user_id`),
  KEY `created_user_id` (`created_user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1518 ;

--
-- Dumping data for table `jos_content`
--

INSERT INTO `jos_content` (`content_id`, `type_id`, `title`, `alias`, `body`, `access`, `state`, `temporary`, `featured`, `created_date`, `created_user_id`, `modified_date`, `modified_user_id`, `checked_out_session`, `checked_out_user_id`, `publish_start_date`, `publish_end_date`, `likes`, `revision`, `config`, `media`, `rules`) VALUES
(34, 5, 'Uncategorised', 'uncategorised', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(35, 5, 'Uncategorised', 'uncategorised', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":"","foobar":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(36, 5, 'Uncategorised', 'uncategorised', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(37, 5, 'Uncategorised', 'uncategorised', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(38, 5, 'Uncategorised', 'uncategorised', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(39, 5, 'Sample Data-Articles', 'sample-data-articles', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 5, 'Sample Data-Banners', 'sample-data-banners', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":"","foobar":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 5, 'Sample Data-Contact', 'sample-data-contact', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 5, 'Sample Data-Newsfeeds', 'sample-data-newsfeeds', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 5, 'Sample Data-Weblinks', 'sample-data-weblinks', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 5, 'Joomla!', 'joomla', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 5, 'Extensions', 'extensions', '<p>The Joomla! content management system lets you create webpages of various types using extensions. There are 5 basic types of extensions: components, modules, templates, languages, and plugins. Your website includes the extensions you need to create a basic website in English, but thousands of additional extensions of all types are available. The <a href="http://extensions.joomla.org" style="color: #1b57b1; text-decoration: none; font-weight: normal;">Joomla! Extensions Directory</a> is the largest directory of Joomla extensions.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 11:57:22', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"category_layout":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 5, 'Components', 'components', '<p><img class="image-left" src="administraa...	1	1	0	0	2011-01-01 00:00:01	42	2012-01-17 16:18:40	42		0	0000-00-00 00:00:00	0000-00-00 00:00:00	0	0	{"category_layout":"","image":""}		{"core.create":[],"core.delete":[],"core.edit":[],...\n	  Edit	  Inline Edit	  Copy	 Delete	50	5	Plugins	plugins	<p><img src="administrator/templates/bluestork/ima...	1	1	0	0	2011-01-01 00:00:01	42	2011-12-27 12:11:56	42		0	0000-00-00 00:00:00	0000-00-00 00:00:00	0	0	{"category_layout":"","image":""}		{"core.create":[],"core.delete":[],"core.edit":[],...\n	  Edit	  Inline Edit	  Copy	 Delete	51	5	Park Site	park-site		1	1	0	0	2011-01-01 00:00:01	42	2011-01-01 00:00:01	42		0	0000-00-00 00:00:00	0000-00-00 00:00:00	0	0	{"target":"","image":""}tor/templates/bluestork/images/header/icon-48-component.png" border="0" alt="Component Image" />Components are larger extensions that produce the major content for your site. Each component has one or more "views" that control how content is displayed. In the Joomla administrator there are additional extensions such as Menus, Redirection, and the extension managers.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 11:58:12', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"category_layout":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 5, 'Modules', 'modules', '<p><img class="image-left" src="administrator/templates/bluestork/images/header/icon-48-module.png" border="0" alt="Media Image" />Modules are small blocks of content that can be displayed in positions on a web page. The menus on this site are displayed in modules. The core of Joomla! includes 24 separate modules ranging from login to search to random images. Each module has a name that starts mod_ but when it displays it has a title. In the descriptions in this section, the titles are the same as the names.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 11:59:44', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"category_layout":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 5, 'Templates', 'templates', '<p><img src="administrator/templates/bluestork/images/header/icon-48-themes.png" border="0" alt="Media Image" align="left" />Templates give your site its look and feel. They determine layout, colours, typefaces, graphics and other aspects of design that make your site unique. Your installation of Joomla comes prepackaged with three front end templates and two backend templates. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Template_Manager_Templates">Help</a></p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 12:04:51', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"category_layout":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 5, 'Languages', 'languages', '<p><img src="administrator/templates/bluestork/images/header/icon-48-language.png" border="0" alt="Languages Image" align="left" />Joomla! installs in English, but translations of the interfaces, sample data and help screens are available in dozens of languages. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Language_Manager_Installed">Help</a></p>\r\n<p><a href="http://community.joomla.org/translations.html">Translation information</a></p>\r\n<p>If there is no language pack available for your language, instructions are available for creating your own translation, which you can also contribute to the community by starting a translation team to create an accredited translation. </p>\r\n<p>Translations of the interfaces are installed using the extensions manager in the site administrator and then managed using the language manager.</p>\r\n<p>If you have two or more languages installed you may enable the language switcher plugin and module. They should always be used together. If you create multilingual content and mark your content, menu items or modules as being in specific languages and follow <a href="http://docs.joomla.org/Language_Switcher_Tutorial_for_Joomla_1.6">the complete instructions</a> your users will be able to select a specific content language using the module. By default both the plugin and module are disabled.</p>\r\n<p>Joomla 2.5 installs with a language override manager that allows you to change the specific words (such as Edit or Search) used in the Joomla application.</p>\r\n<p>There are a number of extensions that can help you manage translations of content available in the<a href="http://extensions.joomla.org"> Joomla! Extensions Directory</a>.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2012-01-17 16:18:40', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"category_layout":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 5, 'Plugins', 'plugins', '<p><img src="administrator/templates/bluestork/images/header/icon-48-plugin.png" border="0" alt="Plugin Image" align="left" />Plugins are small task oriented extensions that enhance the Joomla! framework. Some are associated with particular extensions and others, such as editors, are used across all of Joomla. Most beginning users do not need to change any of the plugins that install with Joomla. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Plugin_Manager_Edit">Help</a></p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 12:11:56', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"category_layout":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 5, 'Park Site', 'park-site', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 5, 'Park Blog', 'park-blog', '<p><span style="font-size: 12px;">Here is where I will blog all about the parks of Australia.</span></p>\r\n<p><em>You can make a blog on your website by creating a category to write your blog posts in (this one is called Park Blog). Each blog post will be an article in that category. If you make a category blog menu link with 1 column it will look like this page, if you display the category description then this part is displayed. </em></p>\r\n<p><em>To enhance your blog you may want to add extensions for <a href="http://extensions.joomla.org/extensions/contacts-and-feedback/articles-comments" style="color: #1b57b1; text-decoration: none; font-weight: normal;">comments</a>,<a href="http://extensions.joomla.org/extensions/social-web" style="color: #1b57b1; text-decoration: none; font-weight: normal;"> interacting with social network sites</a>, <a href="http://extensions.joomla.org/extensions/content-sharing" style="color: #1b57b1; text-decoration: none; font-weight: normal;">tagging</a>, and <a href="http://extensions.joomla.org/extensions/content-sharing" style="color: #1b57b1; text-decoration: none; font-weight: normal;">keeping in contact with your readers</a>. You can also enable the syndication that is included in Joomla (in the Integration Options set Show Feed Link to Show and make sure to display the syndication module on the page).</em></p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 12:15:40', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"category_layout":"","image":"images\\/sampledata\\/parks\\/banner_cradle.jpg"}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 9, 'Photo Gallery', 'photo-gallery', '<p><img src="images/sampledata/parks/banner_cradle.jpg" border="0" /></p>\r\n<p>These are my photos from parks I have visited (I didn''t take them, they are all from <a href="http://commons.wikimedia.org/wiki/Main_Page">Wikimedia Commons</a>).</p>\r\n<p><em>This shows you how to make a simple image gallery using articles in com_content. </em></p>\r\n<p><em>In each article put a thumbnail image before a "readmore" and the full size image after it. Set the article to Show Intro Text: Hide. </em></p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 5, 'Fruit Shop Site', 'fruit-shop-site', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(55, 5, 'Growers', 'growers', '<p>We search the whole countryside for the best fruit growers.</p>\r\n<p><em>You can let each supplier have a page that he or she can edit. To see this in action you will need to create a user who is in the suppliers group.  </em></p>\r\n<p><em>Create one page in the growers category for that user and make that supplier the author of the page. That user will be able to edit his or her page. </em></p>\r\n<p><em>This illustrates the use of the Edit Own permission. </em></p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 12:17:40', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"category_layout":"","image":""}', '', '{"core.create":{"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":{"10":1}}'),
(56, 5, 'Park Links', 'park-links', '<p>Here are links to some of my favorite parks.</p>\r\n<p><em>The weblinks component provides an easy way to make links to external sites that are consistently formatted and categorised. You can create weblinks from the front end of your site.</em></p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"category_layout":"","image":"images\\/sampledata\\/parks\\/banner_cradle.jpg"}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(57, 5, 'Joomla! Specific Links', 'joomla-specific-links', '<p>A selection of links that are all related to the Joomla Project.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 12:32:00', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"category_layout":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(58, 5, 'Other Resources', 'other-resources', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(59, 5, 'Park Site', 'park-site', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(60, 5, 'Shop Site', 'shop-site', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(61, 5, 'Staff', 'staff', '<p>Please feel free to contact our staff at any time should you need assistance.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(62, 5, 'Fruit Encyclopedia', 'fruit-encyclopedia', '<ul>\r\n<a href="index.php?type=encyclopedia&content_id=1506">Apple</a>\r\n<a href="index.php?type=encyclopedia&content_id=1505">Banana</a>\r\n<a href="index.php?type=encyclopedia&content_id=1507">Tamarind</a>\r\n</ul>\r\n<p>Our directory of information about different kinds of fruit.</p><p>We love fruit and want the world to know more about all of its many varieties.</p><p>Although it is small now, we work on it whenever we have a chance.</p><p>All of the images can be found in <a href="http://commons.wikimedia.org/wiki/Main_Page">Wikimedia Commons</a>.</p><p><img src="images/sampledata/fruitshop/apple.jpg" border="0" alt="Apples" title="Apples" /></p><p><em>This encyclopedia is implemented using the contact component, each fruit a separate contact and a category for each letter. A CSS style is used to create the horizontal layout of the alphabet headings. </em></p><p><em>If you wanted to, you could allow some users (such as your growers) to have access to just this category in the contact component and let them help you to create new content for the encyclopedia.</em></p>\r\n', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(63, 5, 'A', 'a', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(64, 5, 'B', 'b', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(65, 5, 'C', 'c', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(66, 5, 'D', 'd', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(67, 5, 'E', 'e', '', 1, 0, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(68, 5, 'F', 'f', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(69, 5, 'G', 'g', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(70, 5, 'H', 'h', '', 1, 0, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(71, 5, 'I', 'i', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(72, 5, 'J', 'j', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(73, 5, 'K', 'k', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(74, 5, 'L', 'l', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(75, 5, 'M', 'm', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(76, 5, 'N', 'n', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(77, 5, 'O', 'o', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(78, 5, 'P', 'p', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(79, 5, 'Q', 'q', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(80, 5, 'R', 'r', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(81, 5, 'S', 's', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(82, 5, 'T', 't', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(83, 5, 'U', 'u', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(84, 5, 'V', 'v', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(85, 5, 'W', 'w', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(86, 5, 'X', 'x', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(87, 5, 'Y', 'y', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(88, 5, 'Z', 'z', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(89, 6, 'Administrator Components', 'administrator-components', '<p>All components are also used in the administrator area of your website. In addition to the ones listed here, there are components in the administrator that do not have direct front end displays, but do help shape your site. The most important ones for most users are</p>\r\n<ul>\r\n<li>Media Manager</li>\r\n<li>Extensions Manager</li>\r\n<li>Menu Manager</li>\r\n<li>Global Configuration</li>\r\n<li>Banners</li>\r\n<li>Redirect</li>\r\n</ul>\r\n<hr title="Media Manager" alt="Media Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<p> </p>\r\n<h3>Media Manager</h3>\r\n<p>The media manager component lets you upload and insert images into content throughout your site. Optionally, you can enable the flash uploader which will allow you to to upload multiple images. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Content_Media_Manager">Help</a></p>\r\n<hr title="Extensions Manager" alt="Extensions Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Extensions Manager</h3>\r\n<p>The extensions manager lets you install, update, uninstall and manage all of your extensions. The extensions manager has been extensively redesigned, although the core install and uninstall functionality remains the same as in Joomla! 1.5. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Extension_Manager_Install">Help</a></p>\r\n<hr title="Menu Manager" alt="Menu Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Menu Manager</h3>\r\n<p>The menu manager lets you create the menus you see displayed on your site. It also allows you to assign modules and template styles to specific menu links. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Menus_Menu_Manager">Help</a></p>\r\n<hr title="Global Configuration" alt="Global Configuration" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Global Configuration</h3>\r\n<p>The global configuration is where the site administrator configures things such as whether search engine friendly urls are enabled, the site meta data (descriptive text used by search engines and indexers) and other functions. For many beginning users simply leaving the settings on default is a good way to begin, although when your site is ready for the public you will want to change the meta data to match its content. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Site_Global_Configuration">Help</a></p>\r\n<hr title="Banners" alt="Banners" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Banners</h3>\r\n<p>The banners component provides a simple way to display a rotating image in a module and, if you wish to have advertising, a way to track the number of times an image is viewed and clicked. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Banners_Banners_Edit">Help</a></p>\r\n<hr title="Redirect" class="system-pagebreak" />\r\n<h3><br />Redirect</h3>\r\n<p>The redirect component is used to manage broken links that produce Page Not Found (404) errors. If enabled it will allow you to redirect broken links to specific pages. It can also be used to manage migration related URL changes. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Redirect_Manager">Help</a></p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 11:03:19', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 9, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(90, 6, 'Archive Module', 'archive-module', '<p>This module shows a list of the calendar months containing archived articles. After you have changed the status of an article to archived, this list will be automatically generated. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Archive" title="Archive Module">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_archive,Archived Articles}</div>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-09-17 22:18:05', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 5, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(91, 6, 'Article Categories Module', 'article-categories-module', '<p>This module displays a list of categories from one parent category. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Categories" title="Categories Module">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_categories,Articles Categories}</div>\r\n<p> </p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-09-17 22:13:31', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 5, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(92, 6, 'Articles Category Module', 'articles-category-module', '<p>This module allows you to display the articles in a specific category. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Category">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_category,Articles Category}</div>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-09-17 22:18:26', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(93, 5, 'Content Modules', 'articles-modules', '<p>Content modules display article and other information from the content component.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(94, 5, 'User Modules', 'user-modules', '<p>User modules interact with the user system, allowing users to login, show who is logged-in, and showing the most recently registered users.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 12:00:50', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"category_layout":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(95, 5, 'Display Modules', 'display-modules', '<p>These modules display information from components other than content and user. These include weblinks, news feeds and the media manager.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(96, 5, 'Utility Modules', 'utility-modules', '<p>Utility modules provide useful functionality such as search, syndication and statistics.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 12:01:34', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"category_layout":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(97, 5, 'Atomic', 'atomic', '<p><img src="templates/atomic/template_thumbnail.png" border="0" alt="The Atomic Template" style="border: 0; float: right;" /></p>\r\n<p>Atomic is a minimal template designed to be a skeleton for making your own template and to learn about Joomla! templating.</p>\r\n<ul>\r\n<li><a href="index.php?Itemid=285">Home Page</a></li>\r\n<li><a href="index.php?Itemid=316">Typography</a></li>\r\n</ul>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 12:08:16', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"category_layout":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(98, 5, 'Beez 20', 'beez-20', '<p><img src="templates/beez_20/template_thumbnail.png" border="0" alt="Beez_20 thumbnail" align="right" style="float: right;" /></p>\r\n<p>Beez 2.0 is a versatile, easy to customise template that works for a variety of sites. It meets major accessibility standards and demonstrates a range of css and javascript techniques. It is the default template that installs with Joomla!</p>\r\n<ul>\r\n<li><a href="index.php?Itemid=424">Home Page</a></li>\r\n<li><a href="index.php?Itemid=423">Typography</a></li>\r\n</ul>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"category_layout":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(99, 5, 'Beez 5', 'beez-5', '<p><img src="templates/beez5/template_thumbnail.png" border="0" alt="Beez5 Thumbnail" align="right" style="float: right;" /></p>\r\n<p>Beez 5 is an html5 implementation of a Joomla! template. It uses a number of html5 techniques to enhance the presentation of a site. It is used as the template for the Fruit Shop sample site.</p>\r\n<ul>\r\n<li><a href="index.php?Itemid=458">Home Page</a></li>\r\n<li><a href="index.php?Itemid=457">Typography</a></li>\r\n</ul>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 12:06:57', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"category_layout":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(101, 6, 'Authentication', 'authentication', '<p>The authentication plugins operate when users login to your site or administrator. The Joomla! authentication plugin is in operation by default but you can enable Gmail or LDAP or install a plugin for a different system. An example is included that may be used to create a new authentication plugin.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Joomla <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Authentication_-_GMail">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>Gmail <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Authentication_-_GMail">Help</a></li>\r\n<li>LDAP <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Authentication_-_LDAP">Help</a></li>\r\n</ul>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 11:04:13', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 4, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(102, 6, 'Australian Parks ', 'australian-parks', '<p><img src="images/sampledata/parks/banner_cradle.jpg" border="0" alt="Cradle Park Banner" /></p>\r\n<p>Welcome!</p>\r\n<p>This is a basic site about the beautiful and fascinating parks of Australia.</p>\r\n<p>On this site you can read all about my travels to different parks, see photos, and find links to park websites.</p>\r\n<p><em>This sample site is an example of using the core of Joomla! to create a basic website, whether a "brochure site,"  a personal blog, or as a way to present information on a topic you are interested in.</em></p>\r\n<p><em> Read more about the site in the About Parks module.</em></p>\r\n<p> </p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-09-06 06:20:19', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 2, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', '', '{"core.delete":[],"core.edit":{"2":1},"core.edit.state":[]}'),
(103, 6, 'Banner Module', 'banner-module', '<p>The banner module is used to display the banners that are managed by the banners component in the site administrator. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Banners">Help</a>.</p>\r\n<div class="sample-module">{loadmodule banners,Banners}</div>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-09-17 22:32:58', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 4, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(104, 6, 'Beginners', 'beginners', '<p>If this is your first Joomla! site or your first web site, you have come to the right place. Joomla will help you get your website up and running quickly and easily.</p>\r\n<p>Start off using your site by logging in using the administrator account you created when you installed Joomla.</p>\r\n', 1, 1, 0, 1, '2011-01-01 00:00:01', 42, '2011-12-27 11:10:49', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 4, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(105, 6, 'Contacts', 'contact', '<p>The contact component provides a way to provide contact forms and information for your site or to create a complex directory that can be used for many different purposes. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Contacts_Contacts">Help</a></p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-10 04:15:37', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 2, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(106, 6, 'Content', 'content', '<p>The content component (com_content) is what you use to write articles. It is extremely flexible and has the largest number of built in views. Articles can be created and edited from the front end, making content the easiest component to use to create your site content. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Content_Article_Manager">Help</a></p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-10 04:28:12', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 2, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(107, 10, 'Cradle Mountain', 'cradle-mountain', '<p> </p>\r\n', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2012-01-17 04:42:36', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 4, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"images\\/sampledata\\/parks\\/landscape\\/250px_cradle_mountain_seen_from_barn_bluff.jpg","float_intro":"","image_intro_alt":"Cradle Mountain","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/landscape\\/800px_cradle_mountain_seen_from_barn_bluff.jpg","float_fulltext":"none","image_fulltext_alt":"Cradle Mountain","image_fulltext_caption":"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Rainforest,bluemountainsNSW.jpg Author: Alan J.W.C. License: GNU Free Documentation License v . 1.2 or later"}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(108, 5, 'Animals', 'animals', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(109, 5, 'Scenery', 'scenery', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(110, 6, 'Custom HTML Module', 'custom-html-module', '<p>This module allows you to create your own HTML Module using a WYSIWYG editor. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Custom_HTML" title="Custom HTML Module">Help</a></p>\r\n<div class="sample-module">{loadmodule custom,Custom HTML}</div>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 11:12:46', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 13, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(111, 6, 'Directions', 'directions', '<p>Here''s how to find our shop.</p><p>By car</p><p>Drive along Main Street to the intersection with First Avenue.  Look for our sign.</p><p>By foot</p><p>From the center of town, walk north on Main Street until you see our sign.</p><p>By bus</p><p>Take the #73 Bus to the last stop. We are on the north east corner.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 1, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(112, 6, 'Editors', 'editors', '<p>Editors are used thoughout Joomla! where content is created. TinyMCE is the default choice in most locations although CodeMirror is used in the template manager. No Editor provides a text box for html content.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>CodeMirror <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Editor_-_CodeMirror">Help</a></li>\r\n<li>TinyMCE<a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Editor_-_TinyMCE"> Help</a></li>\r\n<li>No Editor <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Editor_-_None">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>None</li>\r\n</ul>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-09-06 05:45:40', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 2, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(113, 6, 'Editors-xtd', 'editors-xtd', '<p>These plugins are the buttons found beneath your editor. They only run when an editor plugin runs.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Editor Button: Image<a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Image"> Help</a></li>\r\n<li>Editor Button: Readmore <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Readmore">Help</a></li>\r\n<li>Editor Button: Page Break <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Pagebreak">Help</a></li>\r\n<li>Editor Button: Article <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Article">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>None</li>\r\n</ul>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 11:14:12', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 4, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}');
INSERT INTO `jos_content` (`content_id`, `type_id`, `title`, `alias`, `body`, `access`, `state`, `temporary`, `featured`, `created_date`, `created_user_id`, `modified_date`, `modified_user_id`, `checked_out_session`, `checked_out_user_id`, `publish_start_date`, `publish_end_date`, `likes`, `revision`, `config`, `media`, `rules`) VALUES
(114, 6, 'Feed Display', 'feed-display', '<p>This module allows the displaying of a syndicated feed. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Feed_Display" title="Feed Display Module">Help</a></p>\r\n<div class="sample-module">{loadmodule feed,Feed Display}</div>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-09-17 22:22:08', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 3, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(115, 6, 'First Blog Post', 'first-blog-post', '<p><em>Lorem Ipsum is filler text that is commonly used by designers before the content for a new site is ready.</em></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus purus vitae diam posuere nec eleifend elit dictum. Aenean sit amet erat purus, id fermentum lorem. Integer elementum tristique lectus, non posuere quam pretium sed. Quisque scelerisque erat at urna condimentum euismod. Fusce vestibulum facilisis est, a accumsan massa aliquam in. In auctor interdum mauris a luctus. Morbi euismod tempor dapibus. Duis dapibus posuere quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In eu est nec erat sollicitudin hendrerit. Pellentesque sed turpis nunc, sit amet laoreet velit. Praesent vulputate semper nulla nec varius. Aenean aliquam, justo at blandit sodales, mauris leo viverra orci, sed sodales mauris orci vitae magna.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 1, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(116, 6, 'Second Blog Post', 'second-blog-post', '<p><em>Lorem Ipsum is text that is traditionally used by designers when working on a site before the content is ready.</em></p><p>Pellentesque bibendum metus ut dolor fermentum ut pulvinar tortor hendrerit. Nam vel odio vel diam tempus iaculis in non urna. Curabitur scelerisque, nunc id interdum vestibulum, felis elit luctus dui, ac dapibus tellus mauris tempus augue. Duis congue facilisis lobortis. Phasellus neque erat, tincidunt non lacinia sit amet, rutrum vitae nunc. Sed placerat lacinia fermentum. Integer justo sem, cursus id tristique eget, accumsan vel sapien. Curabitur ipsum neque, elementum vel vestibulum ut, lobortis a nisl. Fusce malesuada mollis purus consectetur auctor. Morbi tellus nunc, dapibus sit amet rutrum vel, laoreet quis mauris. Aenean nec sem nec purus bibendum venenatis. Mauris auctor commodo libero, in adipiscing dui adipiscing eu. Praesent eget orci ac nunc sodales varius.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 1, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(117, 6, 'Footer Module', 'footer-module', '<p>This module shows the Joomla! copyright information. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Footer" title="Footer Module">Help</a></p>\r\n<div class="sample-module">{loadmodule footer,Footer}</div>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-09-17 22:22:47', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 4, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(118, 6, 'Fruit Shop', 'fruit-shop', '<h2>Welcome to the Fruit Shop</h2>\r\n<p>We sell fruits from around the world. Please use our website to learn more about our business. We hope you will come to our shop and buy some fruit.</p>\r\n<p><em>This mini site will show you how you might want to set up a site for a business, in this example one selling fruit. It shows how to use access controls to manage your site content. If you were building a real site, you might want to extend it with e-commerce, a catalog, mailing lists or other enhancements, many of which are available through the</em><a href="http://extensions.joomla.org"><em> Joomla! Extensions Directory</em></a>.</p>\r\n<p><em>To understand this site you will probably want to make one user with group set to customer and one with group set to grower. By logging in with different privileges you can see how access control works.</em></p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 11:17:59', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 2, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(119, 6, 'Getting Help', 'getting-help', '<p><img class="image-left" src="administrator/templates/hathor/images/header/icon-48-help_header.png" border="0" /> There are lots of places you can get help with Joomla!. In many places in your site administrator you will see the help icon. Click on this for more information about the options and functions of items on your screen. Other places to get help are:</p>\r\n<ul>\r\n<li><a href="http://forum.joomla.org">Support Forums</a></li>\r\n<li><a href="http://docs.joomla.org">Documentation</a></li>\r\n<li><a href="http://resources.joomla.org">Professionals</a></li>\r\n<li><a href="http://shop.joomla.org/amazoncom-bookstores.html">Books</a></li>\r\n</ul>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-10 15:32:54', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 10, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(120, 6, 'Getting Started', 'getting-started', '<p>It''s easy to get started creating your website. Knowing some of the basics will help.</p>\r\n<h3>What is a Content Management System?</h3>\r\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p>\r\n<p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. The Joomla! software brings together the template and the content to create web pages.</p>\r\n<h3>Site and Administrator</h3>\r\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the "Site Administrator" link on the "This Site" menu or by adding /administrator to the end of you domain name.</p>\r\n<p>Log in to the administrator using the username and password created during the installation of Joomla.</p>\r\n<h3>Logging in</h3>\r\n<p>To login to the front end of your site use the login form or the login menu link on the "This Site" menu. Use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles.</p>\r\n<p>In managing your site, you will be able to create content that only logged-in users are able to see.</p>\r\n<h3>Creating an article</h3>\r\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the "submit article" link on that menu.</p>\r\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published and put it in the Joomla category.</p>\r\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div>\r\n<h3>Learn more</h3>\r\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href="http://docs.joomla.org">Joomla! documentation site</a> and on the<a href="http://forum.joomla.org"> Joomla! forums</a>.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 11:21:44', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 2, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(121, 6, 'Happy Orange Orchard', 'happy-orange-orchard', '<p>At our orchard we grow the world''s best oranges as well as other citrus fruit such as lemons and grapefruit. Our family has been tending this orchard for generations.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 1, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(122, 6, 'Joomla!', 'joomla', '<p>Congratulations! You have a Joomla site! Joomla makes it easy to build a website just the way you want it and keep it simple to update and maintain.</p>\r\n<p>Joomla is a flexible and powerful platform, whether you are building a small site for yourself or a huge site with hundreds of thousands of visitors. Joomla is open source, which means you can make it work just the way you want it to.</p>', 1, 1, 0, 1, '2011-01-01 00:00:01', 42, '2011-12-27 11:22:23', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 2, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(123, 10, 'Koala', 'koala', '<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2012-01-17 05:15:00', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 9, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"images\\/sampledata\\/parks\\/animals\\/180px_koala_ag1.jpg","float_intro":"","image_intro_alt":"Koala  Thumbnail","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/animals\\/800px_koala_ag1.jpg","float_fulltext":"","image_fulltext_alt":"Koala Climbing Tree","image_fulltext_caption":"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Koala-ag1.jpg Author: Arnaud Gaillard License: Creative Commons Share Alike Attribution Generic 1.0"}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(124, 6, 'Language Switcher', 'language-switcher', '<p>The language switcher module allows you to take advantage of the language tags that are available when content, modules and menu links are created.</p>\r\n<p>This module displays a list of available Content Languages for switching between them.</p>\r\n<p>When switching languages, it redirects to the Home page, or associated menu item, defined for the chosen language. Thereafter, the navigation will be the one defined for that language.</p>\r\n<p><strong>The language filter plugin must be enabled for this module to work properly.</strong></p>\r\n<p><strong></strong> <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Language_Switcher" title="Language Switcher Module">Help</a></p>\r\n<p>To view an example of the language switch moduler module, go to the site administrator and enable the language filter plugin and the language switcher module labelled "language switcher" and visit the fruit shop or park sample sites. Then follow<a href="http://docs.joomla.org/Language_Switcher_Tutorial_for_Joomla_1.6"> the instructions in this tutorial</a>.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 11:25:00', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 3, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(125, 6, 'Latest Articles Module', 'latest-articles-module', '<p>This module shows a list of the most recently published and current Articles. Some that are shown may have expired even though they are the most recent. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Latest_News" title="Latest Articles">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_latest,Latest News}</div>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 11:25:41', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 9, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(126, 6, 'Login Module', 'login-module', '<p>This module displays a username and password login form. It also displays a link to retrieve a forgotten password. If user registration is enabled (in the Global Configuration settings), another link will be shown to enable self-registration for users. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Login" title="Login">Help</a></p>\r\n<div class="sample-module">{loadmodule login,login}</div>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-09-17 22:20:35', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 4, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(127, 6, 'Menu Module', 'menu-module', '<p>This module displays a menu on the site (frontend).  Menus can be displayed in a wide variety of ways by using the menu options and css menu styles. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Menu">Help</a></p>\r\n<div class="sample-module">{loadmodule mod_menu,Menu Example}</div>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-09-17 22:18:45', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(128, 6, 'Most Read Content', 'most-read-content', '<p>This module shows a list of the currently published Articles which have the highest number of page views. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Most_Read" title="Most Read Content">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_popular,Articles Most Read}</div>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 11:26:41', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 6, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(129, 6, 'News Flash', 'news-flash', '<p>Displays a set number of articles from a category based on date or random selection. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Newsflash" title="News Flash Module">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_news,News Flash}</div>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-09-17 22:16:46', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 4, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(130, 6, 'Options', 'options', '<p>As you make your Joomla! site you will control the details of the display using <em>options</em> also referred to as <em>parameter</em><strong>s</strong>. Options control everything from whether the author''s name is displayed to who can view what to the number of items shown on a list.</p>\r\n<p>Default options for each component are changed using the Options button on the component toolbar.</p>\r\n<p>Options can also be set on an individual item, such as an article or contact and in menu links.</p>\r\n<p>If you are happy with how your site looks, it is fine to leave all of the options set to the defaults that were created when your site was installed. As you become more experienced with Joomla you will use options more.</p>\r\n<p> </p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2012-01-17 16:21:24', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 4, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(131, 10, 'Phyllopteryx', 'phyllopteryx', '<p> </p>\r\n', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2012-01-17 04:57:58', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 2, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"images\\/sampledata\\/parks\\/animals\\/200px_phyllopteryx_taeniolatus1.jpg","float_intro":"","image_intro_alt":"Phyllopteryx","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/animals\\/800px_phyllopteryx_taeniolatus1.jpg","float_fulltext":"","image_fulltext_alt":"Phyllopteryx","image_fulltext_caption":"Source: http:\\/\\/en.wikipedia.org\\/wiki\\/File:Phyllopteryx_taeniolatus1.jpg Author: Richard Ling License: GNU Free Documentation License v 1.2 or later"}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(132, 10, 'Pinnacles', 'pinnacles', '<p> </p>\r\n', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2012-01-17 04:41:30', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 3, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"images\\/sampledata\\/parks\\/landscape\\/120px_pinnacles_western_australia.jpg","float_intro":"","image_intro_alt":"Kings Canyon","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/landscape\\/800px_pinnacles_western_australia.jpg","float_fulltext":"","image_fulltext_alt":"Kings Canyon","image_fulltext_caption":"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Pinnacles_Western_Australia.jpg  Author: Martin Gloss  License: GNU Free Documentation license v 1.2 or later."}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(133, 6, 'Professionals', 'professionals', '<p>Joomla! 2.5 continues development of the Joomla Framework and CMS as a powerful and flexible way to bring your vision of the web to reality. With the administrator now fully MVC, the ability to control its look and the management of extensions is now complete.</p>\r\n', 1, 1, 0, 1, '2011-01-01 00:00:01', 42, '2011-12-27 11:36:13', 42, '', 0, '2011-01-09 16:41:13', '0000-00-00 00:00:00', 0, 16, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(134, 6, 'Random Image Module', 'random-image-module', '<p>This module displays a random image from your chosen image directory. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Random_Image" title="Random Image Module">Help</a></p>\r\n<div class="sample-module">{loadmodule random_image,Random Image}</div>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2012-01-17 16:11:13', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 6, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(135, 6, 'Related Items Module', 'related-items-module', '<p>This module displays other Articles that are related to the one currently being viewed. These relations are established by the Meta Keywords.  All the keywords of the current Article are searched against all the keywords of all other published articles. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Related" title="Related Items Module">Help</a></p>\r\n<div class="sample-module">{loadmodule related_items,Articles Related Items}</div>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 11:37:34', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 5, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(136, 6, 'Sample Sites', 'sample-sites', '<p>Your installation includes sample data, designed to show you some of the options you have for building your website. In addition to information about Joomla! there are two sample "sites within a site" designed to help you get started with building your own site.</p>\r\n<p>The first site is a simple site about <a href="index.php?Itemid=243">Australian Parks</a>. It shows how you can quickly and easily build a personal site with just the building blocks that are part of Joomla. It includes a personal blog, weblinks, and a very simple image gallery.</p>\r\n<p>The second site is slightly more complex and represents what you might do if you are building a site for a small business, in this case a <a href="index.php/welcome.html"></a><a href="index.php?Itemid=429">Fruit Shop</a>.</p>\r\n<p>In building either style site, or something completely different, you will probably want to add <a href="http://extensions.joomla.org">extensions</a> and either create or purchase your own template. Many Joomla users start by modifying the <a href="http://docs.joomla.org/How_do_you_modify_a_template%3F">templates</a> that come with the core distribution so that they include special images and other design elements that relate to their site''s focus.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 11:39:07', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 2, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(137, 6, 'Search', 'search-component', '<p>Joomla! 2.5 offers two search options.</p>\r\n<p>The Basic Search component provides basic search functionality for the information contained in your core components. Many extensions can also be searched by the search component. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Search">Help</a></p>\r\n<p>The Smart Search component offers searching similar to that found in major search engines. Smart Search is disabled by default. If you choose to enable it you will need to take several steps. First, enable the Smart Search Plugin in the plugin manager. Then, if you are using the Basic Search Module replace it with the Smart Search Module. Finally, if you have already created content, go to the Smart Search component in your site administrator and click the Index icon. Once indexing of your content is complete, Smart Search will be ready to use. Help.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 11:41:48', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 4, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(138, 6, 'Search Module', 'search-module', '<p>This module will display a search box. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Search" title="Search">Help</a></p>\r\n<div class="sample-module">{loadmodule search,Search}</div>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-09-17 22:35:56', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 4, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(139, 6, 'Search ', 'search-plugin', '<p>The search component uses plugins to control which parts of your Joomla! site are searched. You may choose to turn off some areas to improve performance or for other reasons. Many third party Joomla! extensions have search plugins that extend where search takes place.</p>\r\n<p>Default On:</p>\r\n<ul>\r\n<li>Content <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Content">Help</a></li>\r\n<li>Contacts <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Contacts">Help</a></li>\r\n<li>Weblinks <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Weblinks">Help</a></li>\r\n<li>News Feeds <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Newsfeeds">Help</a></li>\r\n<li>Categories <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Categories">Help</a></li>\r\n</ul>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-09-06 06:13:18', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 3, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(140, 6, 'Site Map', 'site-map', '<p>{loadposition sitemapload}</p><p><em>By putting all of your content into nested categories you can give users and search engines access to everything using a menu.</em></p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 1, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(141, 10, 'Spotted Quoll', 'spotted-quoll', '<p> </p>\r\n<p> </p>\r\n', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2012-01-17 05:02:58', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 4, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"images\\/sampledata\\/parks\\/animals\\/220px_spottedquoll_2005_seanmcclean.jpg","float_intro":"","image_intro_alt":"Spotted Quoll","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/animals\\/789px_spottedquoll_2005_seanmcclean.jpg","float_fulltext":"","image_fulltext_alt":"Spotted Quoll","image_fulltext_caption":"Source: http:\\/\\/en.wikipedia.org\\/wiki\\/File:SpottedQuoll_2005_SeanMcClean.jpg Author: Sean McClean License: GNU Free Documentation License v 1.2 or later"}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(142, 6, 'Statistics Module', 'statistics', '<p>This module shows information about your server installation together with statistics on the Web site users, number of Articles in your database and the number of Web links you provide.</p>\r\n<div class="sample-module">{loadmodule mod_stats,Statistics}</div>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 11:43:25', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 6, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(143, 6, 'Syndicate Module', 'syndicate-module', '<p>The syndicate module will display a link that allows users to take a feed from your site. It will only display on pages for which feeds are possible. That means it will not display on single article, contact or weblinks pages, such as this one. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Syndicate" title="Synicate Module">Help</a></p>\r\n<div class="sample-module">{loadposition syndicate,Syndicate}</div>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 11:44:16', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 3, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(144, 6, 'System', 'system', '<p>System plugins operate every time a page on your site loads. They control such things as your URLS, whether users can check a "remember me" box on the login module, and whether caching is enabled. New is the redirect plugin that together with the redirect component will assist you in managing changes in URLs.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Remember me <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Remember_Me">Help</a></li>\r\n<li>SEF <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_SEF">Help</a></li>\r\n<li>Debug <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Debug">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>Cache <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Cache">Help</a></li>\r\n<li>Log <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Log">Help</a></li>\r\n<li>Redirect <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Redirect">Help</a></li>\r\n</ul>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 11:45:54', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 5, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(145, 6, 'The Joomla! Community', 'the-joomla-community', '<p>Joomla means All Together, and it is a community of people all working and having fun together that makes Joomla possible. Thousands of people each year participate in the Joomla community, and we hope you will be one of them.</p>\r\n<p>People with all kinds of skills, of all skill levels and from around the world are welcome to join in. Participate in the <a href="http://joomla.org">Joomla.org</a> family of websites (the<a href="http://forum.joomla.org"> forum </a>is a great place to start). Come to a <a href="http://community.joomla.org/events.html">Joomla! event</a>. Join or start a <a href="http://community.joomla.org/user-groups.html">Joomla! Users Group</a>. Whether you are a developer, site administrator, designer, end user or fan, there are ways for you to participate and contribute.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 11:47:56', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 3, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(146, 6, 'The Joomla! Project', 'the-joomla-project', '<p>The Joomla Project consists of all of the people who make and support the Joomla Web Platform and Content Management System.</p>\r\n<p>Our mission is to provide a flexible platform for digital publishing and collaboration.</p>\r\n<p>The core values are:</p>\r\n<ul>\r\n<li>Freedom</li>\r\n<li>Equality</li>\r\n<li>Trust</li>\r\n<li>Community</li>\r\n<li>Collaboration</li>\r\n<li>Usability</li>\r\n</ul>\r\n<p>In our vision, we see:</p>\r\n<ul>\r\n<li>People publishing and collaborating in their communities and around the world</li>\r\n<li>Software that is free, secure, and high-quality</li>\r\n<li>A community that is enjoyable and rewarding to participate in</li>\r\n<li>People around the world using their preferred languages</li>\r\n<li>A project that acts autonomously</li>\r\n<li>A project that is socially responsible</li>\r\n<li>A project dedicated to maintaining the trust of its users</li>\r\n</ul>\r\n<p>There are millions of users around the world and thousands of people who contribute to the Joomla Project. They work in three main groups: the Production Working Group, responsible for everything that goes into software and documentation; the Community Working Group, responsible for creating a nurturing the community; and Open Source Matters, the non profit organization responsible for managing legal, financial and organizational issues.</p>\r\n<p>Joomla is a free and open source project, which uses the GNU General Public License version 2 or later.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 11:47:48', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 2, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(147, 6, 'Typography', 'typography', '<h1>H1 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h1><h2>H2 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h2><h3>H3 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h3><h4>H4 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h4><h5>H5 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h5><h6>H6 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h6><p>P The quick brown fox ran over the lazy dog. THE QUICK BROWN FOX RAN OVER THE LAZY DOG.</p><ul><li>Item</li><li>Item</li><li>Item<br /> <ul><li>Item</li><li>Item</li><li>Item<br /> <ul><li>Item</li><li>Item</li><li>Item</li></ul></li></ul></li></ul><ol><li>tem</li><li>Item</li><li>Item<br /> <ol><li>Item</li><li>Item</li><li>Item<br /><ol><li>Item</li><li>Item</li><li>Item</li></ol></li></ol> </li></ol>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 1, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}');
INSERT INTO `jos_content` (`content_id`, `type_id`, `title`, `alias`, `body`, `access`, `state`, `temporary`, `featured`, `created_date`, `created_user_id`, `modified_date`, `modified_user_id`, `checked_out_session`, `checked_out_user_id`, `publish_start_date`, `publish_end_date`, `likes`, `revision`, `config`, `media`, `rules`) VALUES
(148, 6, 'Upgraders', 'upgraders', '<p>If you are an experienced Joomla! 1.5 user, this Joomla site will seem very familiar. There are new templates and improved user interfaces, but most functionality is the same. The biggest changes are improved access control (ACL) and nested categories. This release of Joomla has strong continuity with Joomla! 1.7 while adding enhancements.</p>\r\n', 1, 1, 0, 1, '2011-01-01 00:00:01', 42, '2012-01-17 04:28:10', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 5, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(149, 6, 'User', 'user-plugins', '<p>Default on:</p>\r\n<ul>\r\n<li>Joomla <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#User_-_Joomla.21">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<p>Two new plugins are available but are disabled by default.</p>\r\n<ul>\r\n<li>Contact Creator <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#User_-_Contact_Creator">Help</a><br />Creates a new linked contact record for each new user created.</li>\r\n<li>Profile <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#User_-_Profile">Help</a><br />This example profile plugin allows you to insert additional fields into user registration and profile display. This is intended as an example of the types of extensions to the profile you might want to create.</li>\r\n</ul>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 11:51:25', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 3, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(150, 6, 'Users', 'users-component', '<p>The users extension lets your site visitors register, login and logout, change their passwords and other information, and recover lost passwords. In the administrator it allows you to create, block and manage users and create user groups and access levels. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Users_User_Manager">Help</a></p>\r\n<p>Please note that some of the user views will not display if you are not logged-in to the site.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-10 04:52:55', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 2, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(151, 6, 'Using Joomla!', 'using-joomla', '<p>With Joomla you can create anything from a simple personal website to a complex ecommerce or social site with millions of visitors.</p>\r\n<p>This section of the sample data provides you with a brief introduction to Joomla concepts and reference material to help you understand how Joomla works.</p>\r\n<p><em>When you no longer need the sample data, you can can simply unpublish the sample data category found within each extension in the site administrator or you may completely delete each item and all of the categories. </em></p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 11:52:45', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 2, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(152, 6, 'Weblinks', 'weblinks', '<p>Weblinks (com_weblinks) is a component that provides a structured way to organize external links and present them in a visually attractive, consistent and informative way. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Weblinks_Links">Help</a></p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-10 04:20:10', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 2, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(153, 6, 'Weblinks Module', 'weblinks-module', '<p>This module displays the list of weblinks in a category. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Weblinks" title="Weblinks Module">Help</a></p>\r\n<div class="sample-module">{loadmodule weblinks,Weblinks}</div>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-09-17 22:32:10', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 7, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(154, 6, 'Who''s Online', 'whos-online', '<p>The Who''s Online Module displays the number of Anonymous Users (e.g. Guests) and Registered Users (ones logged-in) that are currently accessing the Web site. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Who_Online" title="Who''s Online">Help</a></p>\r\n<div class="sample-module">{loadmodule whosonline,Who''s Online}</div>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-09-17 22:19:45', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 4, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(155, 10, 'Wobbegone', 'wobbegone', '<p> </p>\r\n', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2012-01-17 05:01:59', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 2, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"images\\/sampledata\\/parks\\/animals\\/180px_wobbegong.jpg","float_intro":"","image_intro_alt":"Wobbegon","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/animals\\/800px_wobbegong.jpg","float_fulltext":"","image_fulltext_alt":"Wobbegon","image_fulltext_caption":"Source: http:\\/\\/en.wikipedia.org\\/wiki\\/File:Wobbegong.jpg Author: Richard Ling Rights: GNU Free Documentation License v 1.2 or later"}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(156, 6, 'Wonderful Watermelon', 'wonderful-watermelon', '<p>Watermelon is a wonderful and healthy treat. We grow the world''s sweetest watermelon. We have the largest watermelon patch in our country.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 1, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(157, 6, 'Wrapper Module', 'wrapper-module', '<p>This module shows an iFrame window to specified location. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Wrapper" title="Wrapper Module">Help</a></p>\r\n<div class="sample-module">{loadmodule wrapper,Wrapper}</div>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-09-17 22:35:00', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(158, 6, 'News Feeds', 'news-feeds', '<p>News Feeds (com_newsfeeds) provides a way to organize and present news feeds. News feeds are a way that you present information from another site on your site. For example, the joomla.org website has numerous feeds that you can incorporate on your site. You an use menus to present a single feed, a list of feeds in a category, or a list of all feed categories. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Newsfeeds_Feeds">Help</a></p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 11:27:31', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 3, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(159, 6, 'Breadcrumbs Module', 'breadcrumbs-module', '<p>Breadcrumbs provide a pathway for users to navigate through the site. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Breadcrumbs" title="Breacrumbs Module">Help</a></p>\r\n<div class="sample-module">{loadmodule breadcrumbs,breadcrumbs}</div>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-09-17 22:10:19', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 5, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(160, 6, 'Content', 'content-plugins', '<p>Content plugins run when specific kinds of pages are loaded. They do things ranging from protecting email addresses from harvesters to creating page breaks.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Email Cloaking <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Email_Cloaking">Help</a></li>\r\n<li>Load Module <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Load_Modules">Help</a></li>\r\n<li>Page Break <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Pagebreak">Help</a></li>\r\n<li>Page Navigation<a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Page_Navigation"> Help</a></li>\r\n<li>Vote <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Vote">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>Code Highlighter (GeSHi) <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Code_Highlighter_.28GeSHi.29">Help</a></li>\r\n</ul>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-09-06 06:11:50', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 2, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(162, 10, 'Blue Mountain Rain Forest', 'blue-mountain-rain-forest', '<p> </p>\r\n', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2012-01-17 04:36:30', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 4, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"images\\/sampledata\\/parks\\/landscape\\/120px_rainforest_bluemountainsnsw.jpg","float_intro":"none","image_intro_alt":"Rain Forest Blue Mountains","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/landscape\\/727px_rainforest_bluemountainsnsw.jpg","float_fulltext":"","image_fulltext_alt":"Rain Forest Blue Mountains","image_fulltext_caption":"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Rainforest,bluemountainsNSW.jpg Author: Adam J.W.C. License: GNU Free Documentation License"}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(163, 10, 'Ormiston Pound', 'ormiston-pound', '<p> </p>\r\n', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2012-01-17 04:51:33', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 5, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', '{"image_intro":"images\\/sampledata\\/parks\\/landscape\\/180px_ormiston_pound.jpg","float_intro":"none","image_intro_alt":"Ormiston Pound","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/landscape\\/800px_ormiston_pound.jpg","float_fulltext":"","image_fulltext_alt":"Ormiston Pound","image_fulltext_caption":"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Ormiston_Pound.JPG Author: License: GNU Free Public Documentation License"}', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(165, 6, 'Latest Users Module', 'latest-users-module', '<p>This module displays the latest registered users. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Latest_Users">Help</a></p>\r\n<div class="sample-module">{loadmodule users_latest,Users Latest}</div>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-09-17 22:21:05', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 4, '{"show_title":"1","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(166, 5, 'Navigation Modules', 'navigation-modules', '<p>Navigation modules help your visitors move through your site and find what they need.</p>\r\n<p>Menus provide your site with structure and help your visitors navigate your site.  Although they are all based on the same menu module, the variety of ways menus are used in the sample data show how flexible this module is.</p>\r\n<p>A menu can range from extremely simple (for example the top menu or the menu for the Australian Parks sample site) to extremely complex (for example the About Joomla! menu with its many levels). They can also be used for other types of presentation such as the site map linked from the "This Site" menu.</p>\r\n<p>Breadcrumbs provide users with information about where they are in a site.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"category_layout":"","image":""}', '', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(167, 5, 'Recipes', 'recipes', '<p>Customers and suppliers can post their favorite recipes for fruit here.</p>\r\n<p>A good idea is to promote the use of metadata keywords to make finding other recipes for the same fruit easier.</p>\r\n<p><em>To see this in action, create a user assigned to the customer group and a user assigned to the suppliers group. These users will be able to create their own recipe pages and edit those pages. They will not be able to edit other users'' pages.</em><br /><br /></p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-12-27 12:18:25', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"category_layout":"","image":""}', '', '{"core.create":{"12":1,"10":1},"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":{"12":1,"10":1}}'),
(168, 6, 'What''s New in 1.5?', 'whats-new-in-15', '<p>This article deliberately archived as an example.</p><p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p>\r\n<p style="margin-bottom: 0in;">In Joomla! 1.5, you''''ll notice:</p>\r\n<ul>\r\n<li>Substantially improved usability, manageability, and scalability far beyond the original Mambo foundations</li>\r\n<li>Expanded accessibility to support internationalisation, double-byte characters and right-to-left support for Arabic, Farsi, and Hebrew languages among others</li>\r\n<li>Extended integration of external applications through Web services</li>\r\n<li>Enhanced content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination</li>\r\n<li>A more sustainable and flexible framework for Component and Extension developers</li>\r\n<li>Backward compatibility with previous releases of Components, Templates, Modules, and other Extensions</li>\r\n</ul>', 1, 2, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 42, '', 0, '2011-01-01 00:00:01', '0000-00-00 00:00:00', 0, 1, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', '', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(169, 5, 'Uncategorised', 'uncategorised', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","image":""}', '', ''),
(501, 2, 'Joomla!', 'joomla', '<p>Home of Joomla!</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"0","count_clicks":""}', '', ''),
(502, 2, 'php.net', 'php', '<p>The language that Joomla! is developed in</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","count_clicks":""}', '', ''),
(503, 2, 'MySQL', 'mysql', '<p>The most commonly used database for Joomla!.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 0, '2012-01-17 16:19:43', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"","width":"","height":"","count_clicks":""}', '', ''),
(504, 2, 'OpenSourceMatters', 'opensourcematters', '<p>Home of OSM</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"0","count_clicks":""}', '', ''),
(505, 2, 'Joomla! - Forums', 'joomla-forums', '<p>Joomla! Forums</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"0","count_clicks":""}', '', ''),
(506, 2, 'Ohloh Tracking of Joomla!', 'ohloh-tracking-of-joomla', '<p>Objective reports from Ohloh about Joomla''s development activity. Joomla! has some star developers with serious kudos.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"0","count_clicks":""}', '', ''),
(507, 2, 'Baw Baw National Park', 'baw-baw-national-park', '<p>Park of the Austalian Alps National Parks system, Baw Baw  features sub alpine vegetation, beautiful views, and opportunities for hiking, skiing and other outdoor activities.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"0","count_clicks":""}', '', ''),
(508, 2, 'Kakadu', 'kakadu', '<p>Kakadu is known for both its cultural heritage and its natural features. It is one of a small number of places listed as World Heritage Places for both reasons. Extensive rock art is found there.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"target":"0","count_clicks":""}', '', ''),
(509, 2, 'Pulu Keeling', 'pulu-keeling', '<p>Located on an atoll 2000 kilometers north of Perth, Pulu Keeling is Australia''s smallest national park.</p>', 1, 1, 0, 0, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 42, '', 0, '2010-07-10 23:44:03', '0000-00-00 00:00:00', 0, 0, '{"target":"0","count_clicks":""}', '', ''),
(601, 4, 'Joomla! Announcements', 'joomla-announcements', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 0, '2011-12-27 12:25:05', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","newsfeed_layout":"","feed_display_order":""}', '', ''),
(602, 4, 'New Joomla! Extensions', 'new-joomla-extensions', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 0, '2011-12-27 12:25:36', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","newsfeed_layout":"","feed_display_order":""}', '', ''),
(603, 4, 'Joomla! Security News', 'joomla-security-news', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 0, '2011-12-27 12:24:55', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","newsfeed_layout":"","feed_display_order":""}', '', ''),
(604, 4, 'Joomla! Connect', 'joomla-connect', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 0, '2011-12-27 12:25:10', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","newsfeed_layout":"","feed_display_order":""}', '', ''),
(1501, 3, 'Contact Name Here', 'name', 'Street Address', 1, 1, 0, 0, '2011-01-01 00:00:01', 0, '2011-12-27 12:23:32', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Twitter","linka":"http:\\/\\/twitter.com\\/joomla","linkb_name":"YouTube","linkb":"http:\\/\\/www.youtube.com\\/user\\/joomla","linkc_name":"Facebook","linkc":"http:\\/\\/www.facebook.com\\/joomla","linkd_name":"FriendFeed","linkd":"http:\\/\\/friendfeed.com\\/joomla","linke_name":"Scribed","linke":"http:\\/\\/www.scribd.com\\/people\\/view\\/504592-joomla","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', '', ''),
(1502, 3, 'Webmaster', 'webmaster', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"","redirect":""}', '', ''),
(1503, 3, 'Owner', 'owner', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', '', ''),
(1504, 3, 'Buyer', 'buyer', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"0","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', '', ''),
(1505, 8, 'Bananas', 'bananas', 'Image Credit: Enzik\r\nRights: Creative Commons Share Alike Unported 3.0\r\nSource: http://commons.wikimedia.org/wiki/File:Bananas_-_Morocco.jpg', 1, 1, 0, 0, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"show_contact_category":"show_with_link","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"1","show_email":"","show_street_address":"","show_suburb":"","show_state":"1","show_postcode":"","show_country":"1","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Wikipedia: Banana English","linka":"http:\\/\\/en.wikipedia.org\\/wiki\\/Banana","linkb_name":"Wikipedia:  \\u0939\\u093f\\u0928\\u094d\\u0926\\u0940 \\u0915\\u0947\\u0932\\u093e","linkb":"http:\\/\\/hi.wikipedia.org\\/wiki\\/%E0%A4%95%E0%A5%87%E0%A4%B2%E0%A4%BE","linkc_name":"Wikipedia:Banana Portugu\\u00eas","linkc":"http:\\/\\/pt.wikipedia.org\\/wiki\\/Banana","linkd_name":"Wikipedia: \\u0411\\u0430\\u043d\\u0430\\u043d  \\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439","linkd":"http:\\/\\/ru.wikipedia.org\\/\\u0411\\u0430\\u043d\\u0430\\u043d","linke_name":"","linke":"","contact_layout":"beez5:encyclopedia"}', 'images/sampledata/fruitshop/bananas_2.jpg', ''),
(1506, 8, 'Apples', 'apples', 'Image Credit: Fievet\r\nRights: Public Domain\r\nSource: http://commons.wikimedia.org/wiki/File:Pommes_vertes.JPG', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"show_contact_category":"","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Wikipedia: Apples English","linka":"http:\\/\\/en.wikipedia.org\\/wiki\\/Apple","linkb_name":"Wikipedia: Manzana Espa\\u00f1ol ","linkb":"http:\\/\\/es.wikipedia.org\\/wiki\\/Manzana","linkc_name":"Wikipedia: \\u82f9\\u679c \\u4e2d\\u6587","linkc":"http:\\/\\/zh.wikipedia.org\\/zh\\/\\u82f9\\u679c","linkd_name":"Wikipedia: Tofaa Kiswahili","linkd":"http:\\/\\/sw.wikipedia.org\\/wiki\\/Tofaa","linke_name":"","linke":"","contact_layout":"beez5:encyclopedia"}', 'images/sampledata/fruitshop/apple.jpg', ''),
(1507, 8, 'Tamarind', 'tamarind', 'Image Credit: Franz Eugen Köhler, Köhler''s Medizinal-Pflanzen \r\nRights: Public Domain\r\nSource:http://commons.wikimedia.org/wiki/File:Koeh-134.jpg', 1, 1, 0, 0, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"show_contact_category":"","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Wikipedia: Tamarind English","linka":"http:\\/\\/en.wikipedia.org\\/wiki\\/Tamarind","linkb_name":"Wikipedia: \\u09a4\\u09c7\\u0981\\u09a4\\u09c1\\u09b2  \\u09ac\\u09be\\u0982\\u09b2\\u09be  ","linkb":"http:\\/\\/bn.wikipedia.org\\/wiki\\/\\u09a4\\u09c7\\u0981\\u09a4\\u09c1\\u09b2 ","linkc_name":"Wikipedia: Tamarinier Fran\\u00e7ais","linkc":"http:\\/\\/fr.wikipedia.org\\/wiki\\/Tamarinier","linkd_name":"Wikipedia:Tamaline lea faka-Tonga","linkd":"http:\\/\\/to.wikipedia.org\\/wiki\\/Tamaline","linke_name":"","linke":"","contact_layout":"beez5:encyclopedia"}', 'images/sampledata/fruitshop/tamarind.jpg', ''),
(1508, 3, 'Shop Address', 'shop-address', '', 1, 1, 0, 0, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', '', ''),
(1509, 6, 'Hello Unified Content Model!', '', '<h2>What is the unified content model? </h2>\r\n<p>In the Joomla! CMS we have always thought of Articles, Weblinks, Newsfeeds, Contacts and so on\r\n				as fundamentally different things. In the UCM, we think about all of those as kinds of content and take\r\n				advantage of the fact that they have a lot of things in common with each other.</p>\r\n<h2>Why is UCM such a big deal?</h2><p>The old (Disunified) Content Model was great and innovative for the time it was created, but it also makes doing\r\nthings in Joomla! a lot more difficult than they need to be today. By moving to the UCM everything\r\nfrom managing your URLs to creating new kinds of content will be much simpler. </p>\r\n\r\n<h2>Does that mean everything is going to look the same?</h2>\r\n<p>No! In fact when it is fully implemented either in the CMS or your own Joomla! Platform application\r\nyou will be able to create new layouts  and content types more easily than ever. </p>\r\n<h2>Is this an advertisement or are you going to show what it means?</h2>\r\n				 <p>These links show super simple examples that highlight the shared and not shared parts of the CMS data\r\n				 structure. For right now it is all hard coded, but of course that is going to change.</p>\r\n				<ul>\r\n				<li><a href="indexa.php?type=article&content_id=104">Article</a></li>\r\n				<li><a href="indexa.php?type=weblinks&content_id=509">Weblink</a></li>\r\n				<li><a href="indexa.php?type=contacts&content_id=1501">Contact</a></li>\r\n				<li><a href="indexa.php?type=newsfeeds&content_id=1301">Newsfeed</a></li>\r\n				<li><a href="indexa.php?type=categories&content_id=55">Category</a></li>\r\n				</ul>\r\n				</div>', NULL, 1, 0, 0, '0000-00-00 00:00:00', 42, '0000-00-00 00:00:00', NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', '', ''),
(1510, 7, 'Top Menu', 'topmenu', '<ul class="topnav"><li><a href="index.php">Home</a></li><li><a href="index.php?type=article&content_id=1511">Learn More</a></li><li><a href="index.php?type=article&content_id=102">Australian Parks</a></li><li><a href="list.php">A List</a></li><li><a href="index.php?type=categories&content_id=62">Fruit</a></li>\r\n<li><a href="index.php?type=gallery&content_id=53">Gallery</a></li>\r\n</ul>', NULL, 1, 0, 0, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', '', ''),
(1511, 6, 'About UCM', 'about-ucm', '<p>Some of the places you go go learn more about the proposed UCM are:</p>\r\n<ul>\r\n<li><a href="https://groups.google.com/d/topic/joomla-dev-platform/sqdZ0B_WCiQ/discussion" >The thread on the Joomla! Platform list</a></li>\r\n<li><a href="https://github.com/eBaySF/joomla-platform/blob/content">The repository with the proposed code</a></li>\r\n<li><a href="https://github.com/eBaySF/joomla-platform/blob/content/docs/manual/en-US/chapters/jcontent.xml">The manual</a></li>\r\n</ul>\r\n<p>If you would like to know more about how I made this site, you can find the code and database behind it <a href="https://github.com/elinw/Content--Play/tree/master/web/content">github</a>.</p>\r\n<p>This is a very simple site in that it does not use MVC at all. The main index.php file provides a basic entry point. Indexa.php provides the specialized layout for the pages showing the common and special fields. The "template" consists of just one CSS file.</p>', NULL, 1, 0, 0, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', '', ''),
(1516, 7, 'Fruit List', 'fruitlist', '<ul>\r\n<a href="encyclopedia.php?type=encyclopedia&content_id=1506">Apple</a>\r\n<a href="encyclopedia.php?type=encyclopedia&content_id=1505">Banana</a>\r\n<a href="encyclopedia.php?type=encyclopedia&content_id=1507">Tamarind</a>\r\n</ul>', NULL, 1, 0, 0, '0000-00-00 00:00:00', 42, '0000-00-00 00:00:00', 42, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', '', ''),
(1517, 11, 'Simple List', 'simple-list', '', NULL, 1, 0, 0, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_hits`
--

CREATE TABLE IF NOT EXISTS `jos_content_hits` (
  `content_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `hit_modified_date` datetime DEFAULT NULL COMMENT 'The time that the content was last hit.',
  PRIMARY KEY (`content_id`),
  KEY `idx_hits` (`hits`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_content_hits`
--

INSERT INTO `jos_content_hits` (`content_id`, `hits`, `hit_modified_date`) VALUES
(34, 0, NULL),
(35, 0, NULL),
(36, 0, NULL),
(37, 0, NULL),
(38, 0, NULL),
(39, 0, NULL),
(40, 0, NULL),
(41, 0, NULL),
(42, 0, NULL),
(43, 0, NULL),
(44, 0, NULL),
(45, 0, NULL),
(46, 0, NULL),
(47, 0, NULL),
(48, 0, NULL),
(49, 0, NULL),
(50, 0, NULL),
(51, 0, NULL),
(52, 0, NULL),
(53, 0, NULL),
(54, 0, NULL),
(55, 0, NULL),
(56, 0, NULL),
(57, 0, NULL),
(58, 0, NULL),
(59, 0, NULL),
(60, 0, NULL),
(61, 0, NULL),
(62, 0, NULL),
(63, 0, NULL),
(64, 0, NULL),
(65, 0, NULL),
(66, 0, NULL),
(67, 0, NULL),
(68, 0, NULL),
(69, 0, NULL),
(70, 0, NULL),
(71, 0, NULL),
(72, 0, NULL),
(73, 0, NULL),
(74, 0, NULL),
(75, 0, NULL),
(76, 0, NULL),
(77, 0, NULL),
(78, 0, NULL),
(79, 0, NULL),
(80, 0, NULL),
(81, 0, NULL),
(82, 0, NULL),
(83, 0, NULL),
(84, 0, NULL),
(85, 0, NULL),
(86, 0, NULL),
(87, 0, NULL),
(88, 0, NULL),
(89, 0, NULL),
(90, 0, NULL),
(91, 0, NULL),
(92, 0, NULL),
(93, 0, NULL),
(94, 0, NULL),
(95, 0, NULL),
(96, 0, NULL),
(97, 0, NULL),
(98, 0, NULL),
(99, 0, NULL),
(101, 0, NULL),
(102, 0, NULL),
(103, 0, NULL),
(104, 0, NULL),
(105, 0, NULL),
(106, 0, NULL),
(107, 0, NULL),
(108, 0, NULL),
(109, 0, NULL),
(110, 0, NULL),
(111, 0, NULL),
(112, 0, NULL),
(113, 0, NULL),
(114, 0, NULL),
(115, 0, NULL),
(116, 0, NULL),
(117, 0, NULL),
(118, 0, NULL),
(119, 0, NULL),
(120, 0, NULL),
(121, 0, NULL),
(122, 0, NULL),
(123, 0, NULL),
(124, 0, NULL),
(125, 0, NULL),
(126, 0, NULL),
(127, 0, NULL),
(128, 0, NULL),
(129, 0, NULL),
(130, 0, NULL),
(131, 0, NULL),
(132, 0, NULL),
(133, 0, NULL),
(134, 0, NULL),
(135, 0, NULL),
(136, 0, NULL),
(137, 0, NULL),
(138, 0, NULL),
(139, 0, NULL),
(140, 0, NULL),
(141, 0, NULL),
(142, 0, NULL),
(143, 0, NULL),
(144, 0, NULL),
(145, 0, NULL),
(146, 0, NULL),
(147, 0, NULL),
(148, 0, NULL),
(149, 0, NULL),
(150, 0, NULL),
(151, 0, NULL),
(152, 0, NULL),
(153, 0, NULL),
(154, 0, NULL),
(155, 0, NULL),
(156, 0, NULL),
(157, 0, NULL),
(158, 0, NULL),
(159, 0, NULL),
(160, 0, NULL),
(162, 0, NULL),
(163, 0, NULL),
(165, 0, NULL),
(166, 0, NULL),
(167, 0, NULL),
(168, 0, NULL),
(169, 0, NULL),
(501, 0, NULL),
(502, 0, NULL),
(503, 0, NULL),
(504, 0, NULL),
(505, 0, NULL),
(506, 0, NULL),
(507, 0, NULL),
(508, 0, NULL),
(509, 0, NULL),
(601, 0, NULL),
(602, 0, NULL),
(603, 0, NULL),
(604, 0, NULL),
(1501, 0, NULL),
(1502, 0, NULL),
(1503, 0, NULL),
(1504, 0, NULL),
(1505, 0, NULL),
(1506, 0, NULL),
(1507, 0, NULL),
(1508, 0, NULL),
(1509, 0, NULL),
(1510, 0, NULL),
(1511, 0, NULL),
(1516, 0, NULL),
(1517, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_likes`
--

CREATE TABLE IF NOT EXISTS `jos_content_likes` (
  `content_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `like_state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '+1 if the user likes the content, -1 if the user explicitly dislikes the content.',
  `like_modified_date` datetime DEFAULT NULL COMMENT 'The time that the like was updated',
  PRIMARY KEY (`content_id`,`user_id`),
  KEY `member_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_types`
--

CREATE TABLE IF NOT EXISTS `jos_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `jos_content_types`
--

INSERT INTO `jos_content_types` (`type_id`, `title`, `alias`, `table`, `rules`) VALUES
(1, 'Basic', 'basic', '', ''),
(2, 'Weblinks', 'weblinks', '#__weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1,"10":0,"12":0},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(3, 'Contacts', 'contacts', '#__contact_details', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 'Newsfeeds', 'newsfeeds', '#__newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(5, 'Categories', 'categories', '#__categories', ''),
(6, 'Article', 'article', '#__old_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(7, 'Navigation', 'navigation', '#__navigation', ''),
(8, 'Encyclopedia', 'encyclopedia', '#__contact_details', ''),
(9, 'Gallery', 'gallery', '#__categories', ''),
(10, 'Image', 'image', '#__old_content', ''),
(11, 'List', 'list', '#__navigation', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_navigation`
--

CREATE TABLE IF NOT EXISTS `jos_navigation` (
  `id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `config` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jos_navigation`
--

INSERT INTO `jos_navigation` (`id`, `content_id`, `config`) VALUES
(1, 1510, 0),
(2, 1516, 0),
(3, 1517, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `content_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jos_newsfeeds`
--

INSERT INTO `jos_newsfeeds` (`catid`, `id`, `link`, `filename`, `numarticles`, `cache_time`, `ordering`, `rtl`, `language`, `created_by_alias`, `metakey`, `metadesc`, `metadata`, `xreference`, `content_id`) VALUES
(17, 1, 'http://www.joomla.org/announcements.feed?type=rss', NULL, 5, 3600, 1, 1, 'en-GB', '', '', '', '{"robots":"","rights":""}', '', 601),
(17, 2, 'http://feeds.joomla.org/JoomlaExtensions', NULL, 5, 3600, 4, 1, 'en-GB', '', '', '', '{"robots":"","rights":""}', '', 602),
(17, 3, 'http://feeds.joomla.org/JoomlaSecurityNews', NULL, 5, 3600, 2, 1, 'en-GB', '', '', '', '{"robots":"","rights":""}', '', 603),
(17, 4, 'http://feeds.joomla.org/JoomlaConnect', NULL, 5, 3600, 3, 1, 'en-GB', '', '', '', '{"robots":"","rights":""}', '', 604);

-- --------------------------------------------------------

--
-- Table structure for table `jos_old_content`
--

CREATE TABLE IF NOT EXISTS `jos_old_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fulltext` mediumtext NOT NULL,
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `urls` text NOT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`content_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=74 ;

--
-- Dumping data for table `jos_old_content`
--

INSERT INTO `jos_old_content` (`id`, `content_id`, `fulltext`, `mask`, `catid`, `created_by_alias`, `urls`, `parentid`, `ordering`, `metakey`, `metadesc`, `hits`, `metadata`, `language`, `xreference`) VALUES
(1, 89, '', 0, 21, 'Joomla!', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 7, '', '', 2, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(2, 90, '', 0, 64, 'Joomla!', '', 0, 5, 'modules, content', '', 5, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(3, 91, '', 0, 64, '', '', 0, 6, 'modules, content', '', 6, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(4, 92, '', 0, 64, 'Joomla!', '', 0, 7, '', 'articles,content', 10, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(5, 101, '', 0, 25, 'Joomla!', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 3, '', '', 1, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(6, 102, '', 0, 26, 'Parks Webmaster', '', 0, 1, '', '', 1, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(7, 103, '', 0, 66, 'Joomla!', '', 0, 6, '', '', 4, '', '*', ''),
(8, 104, '\r\n<p>Explore the articles and other resources right here on your site data to learn more about how Joomla works. (When you''re done reading, you can delete or archive all of this.) You will also probably want to visit the Beginners'' Areas of the <a href="http://docs.joomla.org/Beginners">Joomla documentation</a> and <a href="http://forum.joomla.org">support forums</a>.</p>\r\n<p>You''ll also want to sign up for the Joomla Security Mailing list and the Announcements mailing list. For inspiration visit the <a href="http://community.joomla.org/showcase/">Joomla! Site Showcase</a> to see an amazing array of ways people use Joomla to tell their stories on the web.</p>\r\n<p>The basic Joomla installation will let you get a great site up and running, but when you are ready for more features the power of Joomla is in the creative ways that developers have extended it to do all kinds of things. Visit the <a href="http://extensions.joomla.org/">Joomla! Extensions Directory</a> to see thousands of extensions that can do almost anything you could want on a website. Can''t find what you need? You may want to find a Joomla professional in the <a href="http://resources.joomla.org/">Joomla! Resource Directory</a>.</p>\r\n<p>Want to learn more? Consider attending a <a href="http://community.joomla.org/events.html">Joomla! Day</a> or other event or joining a local <a href="http://community.joomla.org/user-groups.html">Joomla! Users Group</a>. Can''t find one near you? Start one yourself.</p>', 0, 19, 'Joomla!', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 4, '', '', 2, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(9, 105, '', 0, 21, 'Joomla!', '', 0, 2, '', '', 3, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(10, 106, '', 0, 21, '', '', 0, 1, '', '', 5, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(11, 107, '\r\n<p> </p>', 0, 73, 'Parks Webmaster', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 1, '', '', 1, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(12, 110, '', 0, 66, '', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 1, '', '', 13, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(13, 111, '', 0, 29, 'Fruit Shop Webmaster', '', 0, 2, '', '', 0, '', '*', ''),
(14, 112, '', 0, 25, 'Joomla!', '', 0, 5, '', '', 0, '', '*', ''),
(15, 113, '', 0, 25, 'Joomla!', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 6, '', '', 1, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(16, 114, '', 0, 66, '', '', 0, 2, '', '', 3, '', '*', ''),
(17, 115, '<p>Quisque a massa sed libero tristique suscipit. Morbi tristique molestie metus, vel vehicula nisl ultrices pretium. Sed sit amet est et sapien condimentum viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus viverra tortor porta orci convallis ac cursus erat sagittis. Vivamus aliquam, purus non luctus adipiscing, orci urna imperdiet eros, sed tincidunt neque sapien et leo. Cras fermentum, dolor id tempor vestibulum, neque lectus luctus mauris, nec congue tellus arcu nec augue. Nulla quis mi arcu, in bibendum quam. Sed placerat laoreet fermentum. In varius lobortis consequat. Proin vulputate felis ac arcu lacinia adipiscing. Morbi molestie, massa id sagittis luctus, sem sapien sollicitudin quam, in vehicula quam lectus quis augue. Integer orci lectus, bibendum in fringilla sit amet, rutrum eget enim. Curabitur at libero vitae lectus gravida luctus. Nam mattis, ligula sit amet vestibulum feugiat, eros sem sodales mi, nec dignissim ante elit quis nisi. Nulla nec magna ut leo convallis sagittis ac non erat. Etiam in augue nulla, sed tristique orci. Vestibulum quis eleifend sapien.</p><p>Nam ut orci vel felis feugiat posuere ut eu lorem. In risus tellus, sodales eu eleifend sed, imperdiet id nulla. Nunc at enim lacus. Etiam dignissim, arcu quis accumsan varius, dui dui faucibus erat, in molestie mauris diam ac lacus. Sed sit amet egestas nunc. Nam sollicitudin lacinia sapien, non gravida eros convallis vitae. Integer vehicula dui a elit placerat venenatis. Nullam tincidunt ligula aliquet dui interdum feugiat. Maecenas ultricies, lacus quis facilisis vehicula, lectus diam consequat nunc, euismod eleifend metus felis eu mauris. Aliquam dapibus, ipsum a dapibus commodo, dolor arcu accumsan neque, et tempor metus arcu ut massa. Curabitur non risus vitae nisl ornare pellentesque. Pellentesque nec ipsum eu dolor sodales aliquet. Vestibulum egestas scelerisque tincidunt. Integer adipiscing ultrices erat vel rhoncus.</p><p>Integer ac lectus ligula. Nam ornare nisl id magna tincidunt ultrices. Phasellus est nisi, condimentum at sollicitudin vel, consequat eu ipsum. In venenatis ipsum in ligula tincidunt bibendum id et leo. Vivamus quis purus massa. Ut enim magna, pharetra ut condimentum malesuada, auctor ut ligula. Proin mollis, urna a aliquam rutrum, risus erat cursus odio, a convallis enim lectus ut lorem. Nullam semper egestas quam non mattis. Vestibulum venenatis aliquet arcu, consectetur pretium erat pulvinar vel. Vestibulum in aliquet arcu. Ut dolor sem, pellentesque sit amet vestibulum nec, tristique in orci. Sed lacinia metus vel purus pretium sit amet commodo neque condimentum.</p><p>Aenean laoreet aliquet ullamcorper. Nunc tincidunt luctus tellus, eu lobortis sapien tincidunt sed. Donec luctus accumsan sem, at porttitor arcu vestibulum in. Sed suscipit malesuada arcu, ac porttitor orci volutpat in. Vestibulum consectetur vulputate eros ut porttitor. Aenean dictum urna quis erat rutrum nec malesuada tellus elementum. Quisque faucibus, turpis nec consectetur vulputate, mi enim semper mi, nec porttitor libero magna ut lacus. Quisque sodales, leo ut fermentum ullamcorper, tellus augue gravida magna, eget ultricies felis dolor vitae justo. Vestibulum blandit placerat neque, imperdiet ornare ipsum malesuada sed. Quisque bibendum quam porta diam molestie luctus. Sed metus lectus, ornare eu vulputate vel, eleifend facilisis augue. Maecenas eget urna velit, ac volutpat velit. Nam id bibendum ligula. Donec pellentesque, velit eu convallis sodales, nisi dui egestas nunc, et scelerisque lectus quam ut ipsum.</p>', 0, 27, '', '', 0, 2, '', '', 0, '', '*', ''),
(18, 116, '<p>Nam eget venenatis lorem. Vestibulum a interdum sapien. Suspendisse potenti. Quisque auctor purus nec sapien venenatis vehicula malesuada velit vehicula. Fusce vel diam dolor, quis facilisis tortor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque libero nisi, pellentesque quis cursus sit amet, vehicula vitae nisl. Curabitur nec nunc ac sem tincidunt auctor. Phasellus in mattis magna. Donec consequat orci eget tortor ultricies rutrum. Mauris luctus vulputate molestie. Proin tincidunt vehicula euismod. Nam congue leo non erat cursus a adipiscing ipsum congue. Nulla iaculis purus sit amet turpis aliquam sit amet dapibus odio tincidunt. Ut augue diam, congue ut commodo pellentesque, fermentum mattis leo. Sed iaculis urna id enim dignissim sodales at a ipsum. Quisque varius lobortis mollis. Nunc purus magna, pellentesque pellentesque convallis sed, varius id ipsum. Etiam commodo mi mollis erat scelerisque fringilla. Nullam bibendum massa sagittis diam ornare rutrum.</p><p>Praesent convallis metus ut elit faucibus tempus in quis dui. Donec fringilla imperdiet nibh, sit amet fringilla velit congue et. Quisque commodo luctus ligula, vitae porttitor eros venenatis in. Praesent aliquet commodo orci id varius. Nulla nulla nibh, varius id volutpat nec, sagittis nec eros. Cras et dui justo. Curabitur malesuada facilisis neque, sed tempus massa tincidunt ut. Sed suscipit odio in lacus auctor vehicula non ut lacus. In hac habitasse platea dictumst. Sed nulla nisi, lacinia in viverra at, blandit vel tellus. Nulla metus erat, ultrices non pretium vel, varius nec sem. Morbi sollicitudin mattis lacus quis pharetra. Donec tincidunt mollis pretium. Proin non libero justo, vitae mattis diam. Integer vel elit in enim varius posuere sed vitae magna. Duis blandit tempor elementum. Vestibulum molestie dui nisi.</p><p>Curabitur volutpat interdum lorem sed tempus. Sed placerat quam non ligula lacinia sodales. Cras ultrices justo at nisi luctus hendrerit. Quisque sit amet placerat justo. In id sapien eu neque varius pharetra sed in sapien. Etiam nisl nunc, suscipit sed gravida sed, scelerisque ut nisl. Mauris quis massa nisl, aliquet posuere ligula. Etiam eget tortor mauris. Sed pellentesque vestibulum commodo. Mauris vitae est a libero dapibus dictum fringilla vitae magna.</p><p>Nulla facilisi. Praesent eget elit et mauris gravida lobortis ac nec risus. Ut vulputate ullamcorper est, volutpat feugiat lacus convallis non. Maecenas quis sem odio, et aliquam libero. Integer vel tortor eget orci tincidunt pulvinar interdum at erat. Integer ullamcorper consequat eros a pellentesque. Cras sagittis interdum enim in malesuada. Etiam non nunc neque. Fusce non ligula at tellus porta venenatis. Praesent tortor orci, fermentum sed tincidunt vel, varius vel dui. Duis pulvinar luctus odio, eget porta justo vulputate ac. Nulla varius feugiat lorem sed tempor. Phasellus pulvinar dapibus magna eget egestas. In malesuada lectus at justo pellentesque vitae rhoncus nulla ultrices. Proin ut sem sem. Donec eu suscipit ipsum. Cras eu arcu porttitor massa feugiat aliquet at quis nisl.</p>', 0, 27, '', '', 0, 1, '', '', 0, '', '*', ''),
(19, 117, '', 0, 66, 'Joomla!', '', 0, 3, '', '', 4, '', '*', ''),
(20, 118, '', 0, 29, 'Fruit Shop Webmaster', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 1, '', '', 0, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(21, 119, '', 0, 19, 'Joomla!', '', 0, 8, '', '', 17, '', '*', ''),
(22, 120, '', 0, 19, 'Joomla!', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 9, '', '', 0, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(23, 121, '', 0, 30, 'Fruit Shop Webmaster', '', 0, 2, '', '', 0, '', '*', ''),
(24, 122, '', 0, 19, 'Joomla!', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 2, '', '', 0, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(25, 123, '\r\n<p> </p>', 0, 72, 'Parks Webmaster', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 2, '', '', 2, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(26, 124, '', 0, 67, 'Joomla!', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 3, '', '', 3, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(27, 125, '', 0, 64, '', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 1, 'modules, content', '', 15, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(28, 126, '', 0, 65, 'Joomla!', '', 0, 2, '', '', 5, '', '*', ''),
(29, 127, '', 0, 75, 'Joomla!', '', 0, 1, '', '', 12, '', '*', ''),
(30, 128, '', 0, 64, 'Joomla!', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 2, 'modules, content', '', 10, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(31, 129, '', 0, 64, '', '', 0, 3, 'modules, content', '', 10, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(32, 130, '', 0, 19, 'Joomla!', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 10, '', '', 3, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(33, 131, '\r\n<p> </p>', 0, 72, 'Parks Webmaster', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 3, '', '', 0, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(34, 132, '\r\n<p> </p>', 0, 73, 'Parks Webmaster', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 4, '', '', 3, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(35, 133, '\r\n<p>Working with multiple template styles and overrides for the same views, creating the design you want is easier than it has ever been. Limiting support to PHP 5.2.4 and above makes Joomla lighter and faster than ever. Languages files can now be overridden without having your changes lost during an upgrade.  With the proper xml your users update extensions with a single click.</p>\r\n<p>Access control lists are now incorporated using a new system developed for Joomla. The ACL system is designed with developers in mind, so it is easy to incorporate into your extensions. The new nested sets libraries allow you to incorporate infinitely deep categories but also to use nested sets in a variety of other ways.</p>\r\n<p>A new forms library makes creating all kinds of user interaction simple. MooTools 1.3 provides a highly flexible javascript framework that is a major advance over MooTools 1.0.</p>\r\n<p>New events throughout the core make integration of your plugins where you want them a snap.</p>\r\n<p>The separation of the Joomla! Platform project from the Joomla! CMS project makes continuous development of new, powerful APIs  and continuous improvement of existing APIs possible while maintaining the stability of the CMS that millions of webmasters and professionals rely upon.</p>\r\n<p>Learn about:</p>\r\n<ul>\r\n<li><a href="http://docs.joomla.org/What''s_new_in_Joomla_1.6">Changes since 1.5</a></li>\r\n<li><a href="http://docs.joomla.org/ACL_Tutorial_for_Joomla_1.6">Working with ACL</a></li>\r\n<li><a href="http://docs.joomla.org/API16:JCategories">Working with nested categories</a></li>\r\n<li><a href="http://docs.joomla.org/API16:JForm">Forms library</a></li>\r\n<li><a href="http://docs.joomla.org/Working_with_Mootools_1.3">Working with Mootools 1.3</a></li>\r\n<li><a href="http://docs.joomla.org/Layout_Overrides_in_Joomla_1.6">Using new features of the override system</a></li>\r\n<li><a href="http://api.joomla.org">Joomla! API</a></li>\r\n<li><a href="http://docs.joomla.org/API16:JDatabaseQuery">Using JDatabaseQuery</a></li>\r\n<li><a href="http://docs.joomla.org/What''s_new_in_Joomla_1.6#Events">New and updated events</a></li>\r\n<li><a href="http://docs.joomla.org/Xml-rpc_changes_in_Joomla!_1.6">Xmlrpc</a></li>\r\n<li><a href="http://docs.joomla.org/What''s_new_in_Joomla_1.6#Extension_management">Installing and updating extensions</a></li>\r\n<li><a href="http://docs.joomla.org/Setting_up_your_workstation_for_Joomla!_development">Setting up your development environment</a></li>\r\n<li><a href="github.com/joomla">The Joomla! Platform Repository</a> </li>\r\n</ul>', 0, 19, 'Joomla!', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 5, '', '', 10, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(36, 134, '', 0, 66, '', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 4, '', '', 6, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(37, 135, '', 0, 64, 'Joomla!', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 4, 'modules, content', '', 5, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(38, 136, '', 0, 19, 'Joomla!', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 11, '', '', 5, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(39, 137, '', 0, 21, 'Joomla!', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 3, '', '', 3, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(40, 138, '', 0, 67, 'Joomla!', '', 0, 4, '', '', 6, '', '*', ''),
(41, 139, '', 0, 25, 'Joomla!', '', 0, 1, '', '', 0, '', '*', ''),
(42, 140, '', 0, 14, 'Joomla!', '', 0, 1, '', '', 0, '', '*', ''),
(43, 141, '\r\n<p> </p>', 0, 72, 'Parks Webmaster', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 4, '', '', 0, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(44, 142, '', 0, 67, 'Joomla!', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 5, '', '', 5, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(45, 143, '', 0, 67, '', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 6, '', '', 2, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(46, 144, '', 0, 25, 'Joomla!', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 2, '', '', 1, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(47, 145, '', 0, 19, 'Joomla!', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 3, '', '', 0, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(48, 146, '', 0, 19, '', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 1, '', '', 1, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(49, 147, '', 0, 23, 'Joomla!', '', 0, 1, '', '', 0, '', '*', ''),
(50, 148, '\r\n<p>The new user manager will let you manage who has access to what in your site. You can leave access groups exactly the way you had them in Joomla 1.5 or make them as complicated as you want. You can learn more about<a href="http://docs.joomla.org/ACL_Tutorial_for_Joomla_1.6"> how access control works</a> in on the <a href="http://docs.joomla.org">Joomla! Documentation site</a></p>\r\n<p>In Joomla 1.5 and 1.0 content was organized into sections and categories. From 1.6 forward sections are gone, and you can create categories within categories, going as deep as you want. The sample data provides many examples of the use of nested categories.</p>\r\n<p>All layouts have been redesigned to improve accessibility and flexibility. </p>\r\n<p>Updating your site and extensions when needed is easier than ever thanks to installer improvements.</p>\r\n<p> </p>', 0, 19, '', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 6, '', '', 3, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(51, 149, '', 0, 25, 'Joomla!', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 4, '', '', 0, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(52, 150, '', 0, 21, 'Joomla!', '', 0, 5, '', '', 1, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(53, 151, '', 0, 19, 'Joomla!', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 7, '', '', 9, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(54, 152, '', 0, 21, 'Joomla!', '', 0, 6, '', '', 3, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(55, 153, '', 0, 66, 'Joomla!', '', 0, 5, '', '', 23, '', '*', ''),
(56, 154, '', 0, 65, 'Joomla!', '', 0, 1, '', '', 5, '', '*', ''),
(57, 155, '\r\n<p> </p>', 0, 72, 'Parks Webmaster', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 1, '', '', 0, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(58, 156, '', 0, 30, 'Fruit Shop Webmaster', '', 0, 1, '', '', 0, '', '*', ''),
(59, 157, '', 0, 67, 'Joomla!', '', 0, 1, '', '', 15, '', '*', ''),
(60, 158, '', 0, 21, 'Joomla!', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 4, '', '', 2, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(61, 159, '', 0, 75, 'Joomla!', '', 0, 2, '', '', 9, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(62, 160, '', 0, 25, 'Joomla!', '', 0, 7, '', '', 1, '', '*', ''),
(64, 162, '\r\n<p> </p>', 0, 73, 'Parks Webmaster', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 2, '', '', 3, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(65, 163, '\r\n<p> </p>', 0, 73, 'Parks Webmaster', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', 0, 3, '', '', 1, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(66, 165, '', 0, 65, 'Joomla!', '', 0, 3, '', '', 6, '', '*', ''),
(67, 168, '', 0, 9, 'Joomla! 1.5', '', 0, 0, '', '', 0, '{"robots":"","author":"","rights":"","xreference":""}', '*', ''),
(70, 1509, '', 0, 0, '', '', 0, 0, '', '', 0, '', '', ''),
(71, 1511, '', 0, 0, '', '', 0, 0, '', '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_session`
--

CREATE TABLE IF NOT EXISTS `jos_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_usergroups`
--

CREATE TABLE IF NOT EXISTS `jos_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `jos_usergroups`
--

INSERT INTO `jos_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 6, 17, 'Registered'),
(3, 2, 7, 14, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users'),
(10, 3, 12, 13, 'Shop Suppliers (Example)'),
(12, 2, 15, 16, 'Customer Group (Example)');

-- --------------------------------------------------------

--
-- Table structure for table `jos_users`
--

CREATE TABLE IF NOT EXISTS `jos_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `jos_users`
--

INSERT INTO `jos_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(42, 'Super User', 'admin', 'admin@fake.com', 'd2064d358136996bd22421584a7cb33e:trd7TvKHx6dMeoMmBVxYmg0vuXEA4199', 'deprecated', 0, 1, '2012-01-22 15:50:03', '2012-01-22 15:50:08', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `jos_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to  jos_users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to  jos_usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_user_usergroup_map`
--

INSERT INTO `jos_user_usergroup_map` (`user_id`, `group_id`) VALUES
(42, 8);

-- --------------------------------------------------------

--
-- Table structure for table `jos_viewlevels`
--

CREATE TABLE IF NOT EXISTS `jos_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jos_viewlevels`
--

INSERT INTO `jos_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(4, 'Customer Access Level (Example)', 3, '[6,3,12]');

-- --------------------------------------------------------

--
-- Table structure for table `jos_weblinks`
--

CREATE TABLE IF NOT EXISTS `jos_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `url` varchar(250) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `content_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `jos_weblinks`
--

INSERT INTO `jos_weblinks` (`id`, `catid`, `url`, `date`, `ordering`, `archived`, `approved`, `language`, `created_by_alias`, `metakey`, `metadesc`, `metadata`, `xreference`, `content_id`) VALUES
(1, 32, 'http://www.joomla.org', '0000-00-00 00:00:00', 1, 0, 1, 'en-GB', '', '', '', '{"robots":"","author":"","rights":""}', '', 501),
(2, 33, 'http://www.php.net', '0000-00-00 00:00:00', 1, 0, 1, 'en-GB', '', '', '', '{"robots":"","author":"","rights":""}', '', 502),
(3, 33, 'http://www.mysql.com', '0000-00-00 00:00:00', 2, 0, 1, 'en-GB', '', '', '', '{"robots":"","rights":""}', '', 503),
(4, 32, 'http://www.opensourcematters.org', '0000-00-00 00:00:00', 3, 0, 1, 'en-GB', '', '', '', '{"robots":"","author":"","rights":""}', '', 504),
(5, 32, 'http://forum.joomla.org', '0000-00-00 00:00:00', 2, 0, 1, 'en-GB', '', '', '', '{"robots":"","author":"","rights":""}', '', 505),
(6, 33, 'http://www.ohloh.net/projects/20', '0000-00-00 00:00:00', 3, 0, 1, 'en-GB', '', '', '', '{"robots":"","author":"","rights":""}', '', 506),
(7, 31, 'http://www.parkweb.vic.gov.au/1park_display.cfm?park=44', '0000-00-00 00:00:00', 1, 0, 1, 'en-GB', '', '', '', '{"robots":"","author":"","rights":""}', '', 507),
(8, 31, 'http://www.environment.gov.au/parks/kakadu/index.html', '0000-00-00 00:00:00', 2, 0, 1, 'en-GB', '', '', '', '{"robots":"","author":"","rights":""}', '', 508),
(9, 31, 'http://www.environment.gov.au/parks/cocos/index.html', '0000-00-00 00:00:00', 3, 0, 1, 'en-GB', '', '', '', '{"robots":"","author":"","rights":""}', '', 509);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jos_categories`
--
ALTER TABLE `jos_categories`
  ADD CONSTRAINT `jos_categories_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `jos_content` (`content_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jos_contact_details`
--
ALTER TABLE `jos_contact_details`
  ADD CONSTRAINT `jos_contact_details_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `jos_content` (`content_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jos_content`
--
ALTER TABLE `jos_content`
  ADD CONSTRAINT `jos_content_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `jos_content_types` (`type_id`),
  ADD CONSTRAINT `jos_content_ibfk_2` FOREIGN KEY (`modified_user_id`) REFERENCES `jos_users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `jos_content_ibfk_3` FOREIGN KEY (`checked_out_user_id`) REFERENCES `jos_users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `jos_content_ibfk_4` FOREIGN KEY (`created_user_id`) REFERENCES `jos_users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `jos_content_hits`
--
ALTER TABLE `jos_content_hits`
  ADD CONSTRAINT `jos_content_hits_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `jos_content` (`content_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jos_content_likes`
--
ALTER TABLE `jos_content_likes`
  ADD CONSTRAINT `jos_content_likes_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `jos_content` (`content_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jos_newsfeeds`
--
ALTER TABLE `jos_newsfeeds`
  ADD CONSTRAINT `jos_newsfeeds_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `jos_content` (`content_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jos_old_content`
--
ALTER TABLE `jos_old_content`
  ADD CONSTRAINT `jos_old_content_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `jos_content` (`content_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jos_weblinks`
--
ALTER TABLE `jos_weblinks`
  ADD CONSTRAINT `jos_weblinks_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `jos_content` (`content_id`) ON DELETE CASCADE ON UPDATE CASCADE;
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
