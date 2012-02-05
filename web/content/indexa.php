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
//jimport('joomla.application.web');
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
		$content = $factory->getContent($this->input->get('type'))->load($this->input->get('content_id'));

		$this->setBody(

			'<head>
				<link rel="stylesheet" href="templates/simplecontent/css/template.css" type="text/css" />
				<title>Hello  ' . ucfirst($this->input->get('type')) .'</title>
			</head>
			<body >
			<div class="main">

				<h1>Hello ' . ucfirst($this->input->get('type')) . '!</h1>'.
				'<div class="common">'.

					'<p>All content has some things in common starting with a title and a body.</p>'.
					'<h2>'.$content->title.'</h2>'.
					'<p>'.$content->body.'</p>'.
					'<dl>'.
					'<dt>Created by</dt><dd>'.$content->created_user_id.'</dd>'.
					'<dt>Created date</dt><dd>'.$content->created_date.'</dd>'.
					'<dt>Modified Date</dt><dd>'.$content->modified_date.'</dd>'.
					'<dt>Modified by</dt><dd>'.$content->modified_user_id.'</dd>'.
					'<dt>Likes</dt><dd>'.$content->likes.'</dd>'.
					'<dt>Revisions</dt><dd>'.$content->revisions.'</dd>'.
					'<dt>Hits</dt><dd>'.$content->hits.'</dd>'.
					'<dt>Featured</dt><dd>'.$content->featured.'</dd>'.
					'<dt>Unique ID</dt><dd>'.$content->content_id.'</dd>'.
					'<dt>Media</dt><dd>'.'Messy to display'.'</dd>'.
					'<dt>Type</dt><dd>'.$content->type_id.'</dd>'.
					'<dt>State</dt><dd>'.$content->state.'</dd>'.
					'<dt>Access</dt><dd>'.$content->access.'</dd>'.
					'<dt>Rules (Permissions)</dt><dd>'.'Messy to display'.'</dd>'.
					'<dt>Configuration</dt><dd>'.'Messy to display'.'</dd>'.
					'</dl>'
		);
		if ($content->type_id == 6)
		{
			$this->appendBody(
					'</div>'.
					'<div class="special article">'.
						'<p>Every type can have its own secondary table with additional fields. </p>'.
						'<dl>'.
						'<dt>Full Text</dt><dd>'.$content->fulltext.'</dd>'.
						'<dt>Urls</dt><dd>'.'Messy to display'.'</dd>'.
						'<dt>Category</dt><dd>'.$content->catid.'</dd>'.
						'<dt>Language</dt><dd>'.$content->language.'</dd>'.
						'<dt>Key Words</dt><dd>'.$content->metakey.'</dd>'.
						'<dt>Meta Description</dt><dd>'.$content->metadesc.'</dd>'.
						'<dt>Meta Data</dt><dd>'.'Messy to display'.'</dd>'.
						'</dl>'.
					'</div>'.
					'<div class="bottom">'.
						'<p>How do you get them to display? All you need to do is put $content->language but name the field you want.</p>'.
					'</div>'.
				'</div>'
			);
		}
		elseif ($content->type_id == 5)
		{
			$this->appendBody(
				'</div>'.
				'<div class="special category">'.
					'<p>Every type can have its own secondary table with additional fields. </p>'.
					'<dl>'.
					'<dt>Parent ID</dt><dd>'.$content->parent_id.'</dd>'.
					'<dt>Level</dt><dd>'.$content->level.'</dd>'.
					'<dt>Lft</dt><dd>'.$content->lft.'</dd>'.
					'<dt>Rgt</dt><dd>'.$content->rgt.'</dd>'.
					'<dt>Key Words</dt><dd>'.$content->metakey.'</dd>'.
					'<dt>Meta Description</dt><dd>'.$content->metadesc.'</dd>'.
					'<dt>Meta Data</dt><dd>'.'Messy to display'.'</dd>'.
					'</dl>'.
				'</div>'.
				'<div class="bottom">'.
					'<p>How do you get them to display? All you need to do is put $content->language but name the field you want.</p>'.
				'</div>'.
			'</div>'
			);
		}
		elseif ($content->type_id == 4)
		{
			$this->appendBody(
				'</div>'.
				'<div class="special newsfeed">'.
					'<p>Every type can have its own secondary table with additional fields. </p>'.

					'<dl>'.
					'<dt>Link</dt><dd>'.$content->link.'</dd>'.
					'<dt>Number of Articles</dt><dd>'.$content->numarticles.'</dd>'.
					'<dt>Text direction</dt><dd>'.$content->rtl.'</dd>'.
					'<dt>Cache Time</dt><dd>'.$content->cachetime.'</dd>'.
					'<dt>Category</dt><dd>'.$content->catid.'</dd>'.
					'<dt>Language</dt><dd>'.$content->language.'</dd>'.
					'<dt>Key Words</dt><dd>'.$content->metakey.'</dd>'.
					'<dt>Meta Description</dt><dd>'.$content->metadesc.'</dd>'.
					'<dt>Meta Data</dt><dd>'.'Messy to display'.'</dd>'.
					'</dl>'.
					'<p>Show the link. <a href="'.$content->link.'">'.$content->title.'</a></p>'.
				'</div>'.
				'<div class="bottom">'.
					'<p>How do you get them to display? All you need to do is put $content->language but name the field you want.</p>'.
				'</div>'.
			'</div>'
			);
		}
		elseif ($content->type_id == 3)
		{
			$this->appendBody(
				'</div>'.
				'<div class="special contact">'.
					'<p>Every type can have its own secondary table with additional fields. </p>'.
					'<dl>'.
					'<dt>E-mail</dt><dd>'.$content->email.'</dd>'.
					'<dt>Position</dt><dd>'.$content->con_position.'</dd>'.
					'<dt>Telephone</dt><dd>'.$content->telephone.'</dd>'.
					'<dt>Fax</dt><dd>'.$content->fax.'</dd>'.
					'<dt>Mobile</dt><dd>'.$content->mobile.'</dd>'.
					'<dt>Miscellaneous</dt><dd>'.$content->misc.'</dd>'.
					'<dt>Country</dt><dd>'.$content->country.'</dd>'.
					'<dt>State/Province</dt><dd>'.$content->state.'</dd>'.
					'<dt>Suburb</dt><dd>'.$content->suburb.'</dd>'.
					'<dt>Post Code</dt><dd>'.$content->postcode.'</dd>'.
					'<dt>Web Page</dt><dd>'.$content->webpage.'</dd>'.
					'<dt>Category</dt><dd>'.$content->catid.'</dd>'.
					'<dt>Language</dt><dd>'.$content->language.'</dd>'.
					'<dt>Key Words</dt><dd>'.$content->metakey.'</dd>'.
					'<dt>Meta Description</dt><dd>'.$content->metadesc.'</dd>'.
					'<dt>Meta Data</dt><dd>'.'Messy to display'.'</dd>'.
					'</dl>'.
				'</div>'.
				'<div class="bottom">'.
					'<p>How do you get them to display? All you need to do is put $content->language but name the field you want.</p>'.
				'</div>'.
			'</div>'
			);
		}
		elseif ($content->type_id == 2)
		{
			$this->appendBody(
				'</div>'.
				'<div class="special weblink">'.
					'<p>Every type can have its own secondary table with additional fields. </p>'.
					'<dl>'.
					'<dt>URL</dt><dd>'.$content->url.'</dd>'.
					'<dt>Category</dt><dd>'.$content->catid.'</dd>'.
					'<dt>Language</dt><dd>'.$content->language.'</dd>'.
					'<dt>Key Words</dt><dd>'.$content->metakey.'</dd>'.
					'<dt>Meta Description</dt><dd>'.$content->metadesc.'</dd>'.
					'<dt>Meta Data</dt><dd>'.'Messy to display'.'</dd>'.
					'</dl>'.
					'<p>Oh just do it. <a href="'.$content->url.'">'.$content->title.'</a></p>'.
				'</div>'.
				'<div class="bottom">'.
					'<p>How do you get them to display? All you need to do is put $content->language but name the field you want.</p>'.
				'</div>'.
			'</div>'
			);
		}
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
JWeb::getInstance('Simple')->execute();
