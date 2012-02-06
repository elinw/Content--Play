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

// We are a valid Joomla entry point.
define('_JEXEC', 1);

// Setup the base path related constant.
define('JPATH_BASE', dirname(__FILE__));
define('JPATH_SITE', JPATH_BASE);
define('JPATH_THEMES', JPATH_BASE.'/themes');
define('JPATH_CACHE', JPATH_BASE.'/cache');

// Increase error reporting to that any errors are displayed.
// Note, you would not use these settings in production.
error_reporting(E_ALL);
ini_set('display_errors', true);

// Bootstrap the application.
require dirname(dirname(dirname(__FILE__))).'/bootstrap.php';

JLoader::register('JContent', JPATH_BASE . '/joomla/content/content');
/**
* An example JContent application class.
*
* This is an example of using JContent to render a simple page.
*
* @package  Joomla.Examples
* @since    11.3
*/
class Simple extends JApplicationWeb
{
	/**
	 * Overrides the parent doExecute method to run the web application.
	 *
	 * This method should include your custom code that runs the application.
	 *
	 * @return  void
	 *
	 * @since   11.3
	 */
	protected function doExecute()
	{
		$this->dbo = JDatabase::getInstance(
			array(
				'driver' => $this->get('dbtype'),
				'host' => $this->get('host'),
				'user' => $this->get('user'),
				'password' => $this->get('pass'),
				'database' => $this->get('name'),
				'prefix' => $this->get('dbprefix'),
			)
		);


		$factory  = JContentFactory::getInstance('',$this->dbo,$this);
		$topnav = $factory->getContent('Navigation')->load(1510);
			$content = $factory->getContent('Gallery')->load($this->input->get('content_id'));
	$this->setBody(
			'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">'
		);
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

		$list1 = array(162,163,132,107);

		foreach ($list1 as $i )
		{
			$item = $factory->getContent('Image')->load($i);
			$images = json_decode($item->media);
			$this->appendBody('<div class="image"><a href="image.php?type=image&content_id='.$i.'">
			<img src="'.$images->image_intro.'" alt="'.$images->image_intro_alt . '"></a></div><div class="clear"></div>');
		}
		$this->appendBody('</div>');

		$this->appendBody('<div class="gallery-col-2">');

		$list2 = array(155,131,141,123);

		foreach ($list2 as $i )
		{
			$item = $factory->getContent('Image')->load($i);
			$images = json_decode($item->media);
			$this->appendBody('<div class="image"><a href="image.php?type=image&content_id='.$i.'">
			<img src="'.$images->image_intro.'" alt="'.$images->image_intro_alt . '"></a></div><div class="clear"></div>');
		}
		$this->appendBody('</div>');


		$this->appendBody('</body></html>');
	}
}

// Instantiate the application object, passing the class name to JWeb::getInstance
// and use chaining to execute the application.
JWeb::getInstance('Simple')->execute();
