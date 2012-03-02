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


			$this->appendBody('<div class="goback"></div><a href="javascript:history.go(-1)">Go Back</a></div>');
			$this->appendBody('</body></html>');

