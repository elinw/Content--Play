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


			$this->appendBody('<h1><a href="'.$content->url.'">'.$content->title.' </a></h2>');

				$this->appendBody($content->body);
			$this->appendBody(
					'<dl>');
					$this->appendBody('<dt>E-mail</dt><dd>'.$content->email.'</dd>');
					$this->appendBody('<dt>Position</dt><dd>'.$content->con_position.'</dd>');
					$this->appendBody('<dt>Telephone</dt><dd>'.$content->telephone.'</dd>');
					$this->appendBody('<dt>Fax</dt><dd>'.$content->fax.'</dd>');
					$this->appendBody('<dt>Mobile</dt><dd>'.$content->mobile.'</dd>');
					$this->appendBody('<dt>Miscellaneous</dt><dd>'.$content->misc.'</dd>');
					$this->appendBody('<dt>Country</dt><dd>'.$content->country.'</dd>');
					$this->appendBody('<dt>State/Province</dt><dd>'.$content->state.'</dd>');
					$this->appendBody('<dt>Suburb</dt><dd>'.$content->suburb.'</dd>');
					$this->appendBody('<dt>Post Code</dt><dd>'.$content->postcode.'</dd>');
					$this->appendBody('<dt>Web Page</dt><dd>'.$content->webpage.'</dd>');
					$this->appendBody('<dt>Category</dt><dd>'.$content->catid.'</dd>');
					$this->appendBody('<dt>Meta Description</dt><dd>'.$content->metadesc.'</dd>');

					$this->appendBody('</dl>');

			$this->appendBody('<div class="goback"></div><a href="javascript:history.go(-1)">Go Back</a></div>');
			$this->appendBody('</body></html>');

