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
class HelloUCM extends JApplicationWeb
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

		$this->setBody('<html>
			'.
			'<head>
				<link rel="stylesheet" href="templates/simplecontent/css/template.css" type="text/css" />
				<title>Hello UCM</title>
			</head>
<div class="main">
				<h1>Hello Unified Content!</h2>'.
				'<h2>What is the unified content model? </h2>'.
				'<p>In the Joomla! CMS we have always thought of Articles, Weblinks, Newsfeeds, Contacts and so on
				as fundamentally different things. In the UCM, we think about all of those as kinds of content and take
				advantage of the fact that they have a lot of things in common with each other.</p>'.
				'<h2>Why is UCM such a big deal?</h2>'.
				'<p>The old (Disunified) Content Model was great and innovative for the time it was created, but it also makes doing
				things in Joomla! a lot more difficult than they need to be today. By moving to the UCM everything
				from managing your URLs to creating new kinds of content will be much simpler. </p>'.
				'<h2>Does that mean everything is going to look the same?</h2>'.
				'<p>No! In fact when it is fully implemented either in the CMS or your own Joomla! Platform application
				 you will be able to create new layouts  and content types more easily than ever. </p>'.
				 '<h2>Is this an advertisement or are you going to show what it means?</h2>'.
				 '<p>These links show super simple examples that highlight the shared and not shared parts of the CMS data
				 structure. For right now it is all hard coded, but of course that is going to change.</p>'.
				 '
				<ul>
				<li><a href="indexa.php">Article</a></li>
				<li><a href="indexw.php">Weblink</a></li>
				<li><a href="indexc.php">Contact</a></li>
				<li><a href="indexn.php">Newsfeed</a></li>
				<li><a href="indexcat.php">Category</a></li>
				</ul>'.
				'</div>'.
			'</body>
			</html>'
		);
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

// Instantiate the application object, passing the class name to JWeb::getInstance
// and use chaining to execute the application.
JWeb::getInstance('HelloUCM')->execute();
