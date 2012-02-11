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

		try
		{
			// Later we'll have some way to set this.
			$default = 1509;
			$defaulttype = 'Article';
			$type= $this->input->get('type');
			$factory  = JContentFactory::getInstance('',$this->dbo,$this);
			// This navigation is going to be loaded for all pages.
			$topnav = $factory->getContent('Navigation')->load(1510);
			$sidenav = $factory->getContent('Navigation')->load(1518);

			if (!$this->input->get('content_id'))
			{
			$content = $factory->getContent($defaulttype)->load($default);
			}
			else
			{
				$content = $factory->getContent($type)->load($this->input->get('content_id'));
			}
			if (!isset($content))
			{
				$content = $factory->getContent($defaulttype)->load($default);
			}
		}
		catch (RuntimeException $e)
		{
			// handle error
		}
		$this->setBody(
			'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">'
		);
		$this->appendBody('<html>
				<head>
					<link rel="stylesheet" href="templates/simplecontent/css/template.css" type="text/css" />
					<link rel="stylesheet" href="templates/simplecontent/css/bootstrap/css/bootstrap.css" type="text/css" />
					<title>Hello UCM! ' . $content->title  . '</title>
				</head>
				<body >');
				$this->appendBody(
					'<div class="navbar navbar span10 offset2">
					<div class="navbar-inner">
					<div class="container">');
						$this->appendBody( $topnav->body );
					$this->appendBody('</div></div></div>');
					$this->appendBody('<div class="clear"></div>');
        $this->appendBody('  <div class="container-fluid">');
			$this->appendBody('<div class="span2" >');
			$this->appendBody('<div id="page-nav" class="well sidebar-nav">');
 			$this->appendBody( $sidenav->body );
			$this->appendBody('</div></div>');
			$this->appendBody('<div class="span8">');


		$typefile = dirname(__FILE__) .'/'.$type .'.php';
		if (file_exists($typefile)){
			include_once ($typefile);
			$this->appendBody('</div>');
		}
		else
		{
			$this->appendBody('<h1>'. $content->title . '</h1>')
			->appendBody($content->body);
			$this->appendBody('</div>');
		}
			$this->appendBody('<div class="span2"></div>');
			$this->appendBody('</div >')
			->appendBody('</div ></div >')
			->appendBody('</body></html>');
	}

}

// Instantiate the application object, passing the class name to JWeb::getInstance
// and use chaining to execute the application.
JWeb::getInstance('Simple')->execute();
