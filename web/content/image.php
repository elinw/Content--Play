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

			$content = $factory->getContent('Image')->load($this->input->get('content_id'));

		$this->setBody(
			'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">'
		);

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
			$this->appendBody('</body></html>');
	}

}

// Instantiate the application object, passing the class name to JWeb::getInstance
// and use chaining to execute the application.
JWeb::getInstance('Simple')->execute();
