<?php
/**
 * An example JWeb application built on the Joomla Platform.
 *
 * To run this example, copy or soft-link this folder to your web server tree.
 *
 * @package    Joomla.Examples
 * @copyright  Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.
 * @license    GNU General Public License version 2 or later; see LICENSE
 */


		$this->appendBody('<html>
				<head>
					<link rel="stylesheet" href="templates/simplecontent/css/template.css" type="text/css" />
					<title>Hello UCM! ' . $content->title  . '</title>
				</head>
				<body >')
			->appendBody('<div class="main">')
			->appendBody( $topnav->body )
			->appendBody('<h1>'. $content->title . '</h1>');
			$images = json_decode($content->media);
			$this->appendBody('<div class="image-fulltext">
			<img src="'.$images->image_fulltext.'" alt="'.$images->image_fulltext_alt . '"></div><div class="clear"></div>');

			$this->appendBody($images->image_fulltext_caption);
			$this->appendBody('<div class="goback"></div><a href="javascript:history.go(-1)">Go Back</a></div>');
			$this->appendBody('</body></html>');

