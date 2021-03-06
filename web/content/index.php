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
	 *y
	 * @return  void
	 *
	 * @since   11.3
	 */
	protected function doExecute()
	{

		$config = JFactory::getConfig();
		$this->dbo = JFactory::getDbo();
		$this->session = JFactory::getSession();
		JFactory::$application = $this;
		try
		{
			// Storing the default in the configuration for now.
			$default = $config->get('default');
			$defaulttype = $config->get('defaulttype');
			$type = $this->input->get('type');
			$task = $this->input->get('task');
			$content_id = $this->input->get('content_id');
			$factory  = JContentFactory::getInstance();
			// This navigation is going to be loaded for all pages.
			$topnav = $factory->getContent('Navigation')->load(1510);
			$sidenav = $factory->getContent('Navigation')->load(1518);
			if (!$task)
			{
				if ($type && $content_id)
				{
					$content = $factory->getContent($type)->load($content_id);
				}
				if (!$content_id && !$type || !isset($content) )
				{
					$content = $factory->getContent($defaulttype)->load($default);
				}
				elseif (!$type && $content_id)
				{
					$content = $factory->getContent($defaulttype)->load($content_id);
				}

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
					<link rel="stylesheet" href="themes/simplecontent/css/template.css" type="text/css" />
					<link rel="stylesheet" href="themes/simplecontent/css/bootstrap/css/bootstrap.css" type="text/css" />
					<title>Hello UCM! ');
		if (isset($content))
		{
					$this->appendBody( $content->title);
		}
				$this->appendBody('</title>
				</head>
				<body >');
				$this->appendBody(
					'<div class="navbar navbar span10 offset2">
					<div class="navbar-inner">
					<div class="container">');
						$this->appendBody( $topnav->body );
					$this->appendBody('</div></div></div>');
					$this->appendBody('<div class="clear"></div>');
			$this->appendBody('<div class="container-fluid">');
			$this->appendBody('<div class="span2" >');
			$this->appendBody('<div id="page-nav" class="well sidebar-nav">');
 			$this->appendBody( $sidenav->body );
			$this->appendBody('</div></div>');
			$this->appendBody('<div class="span8">');
			if ($task == 'create')
			{
				include_once ('create.php');
			}
			if ($task == 'update')
			{
				include_once ('update.php');
			}
			if ($task == 'save')
			{
				include_once ('save.php');
			}
		if (!$task)
		{
			// Need ACL here
			$this->appendBody('<a href="index.php?type='.$type. '&content_id='.$content_id.'&task=update">JEdit</a>');
			$this->appendBody(' <a href="index.php?type='.$type. '&task=create">JNew '. ucfirst($type) . '</a>');

			$typefile = dirname(__FILE__) .'/views/'.$type .'.php';
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
		}
			$this->appendBody('<div class="span2"></div>');
			$this->appendBody('</div >')
			->appendBody('</div ></div >')
			->appendBody('</body></html>');

	}
	/**
	 * Method to get the template name. This is needed for compatability with JApplication.
	 *
	 * @return  string  The theme name.
	 *
	 * @since   12.1
	 */
	public function getTemplate()
	{
		return $this->get('theme');
	}
}

// Instantiate the application object, passing the class name to JApplicationWeb::getInstance
// and use chaining to execute the application.
JApplicationWeb::getInstance('Simple')->execute();
