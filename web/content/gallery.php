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
					<title>A Gallery</title>
				</head>
				<body >')
			->appendBody('<div class="main">')
			->appendBody( $topnav->body )
			->appendBody('<h1>'. $content->title . '</h1>')
			->appendBody($content->body)

			->appendBody('<div class="gallery-col-1">');

		// This array should come from the item parameters
		$list1 = array(162,163,132,107);

		foreach ($list1 as $i )
		{
			$item = $factory->getContent('Image')->load($i);
			$images = json_decode($item->media);
			$this->appendBody('<div class="image"><a href="index.php?type=image&content_id='.$i.'">
			<img src="'.$images->image_intro.'" alt="'.$images->image_intro_alt . '"></a></div><div class="clear"></div>');
		}
		$this->appendBody('</div>');

		$this->appendBody('<div class="gallery-col-2">');

		// This array should come from the item parameters
		$list2 = array(155,131,141,123);

		foreach ($list2 as $i )
		{
			$item = $factory->getContent('Image')->load($i);
			$images = json_decode($item->media);
			$this->appendBody('<div class="image"><a href="index.php?type=image&content_id='.$i.'">
			<img src="'.$images->image_intro.'" alt="'.$images->image_intro_alt . '"></a></div><div class="clear"></div>');
		}
		$this->appendBody('</div>');
		$this->appendBody('</body></html>');

