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

		//Get the menu
		$bottomnav = $factory->getContent('Navigation')->load(1516);

		$this->appendBody('<html>
				<head>
					<link rel="stylesheet" href="templates/simplecontent/css/template.css" type="text/css" />
					<title> ' . $content->title  . '</title>
				</head>
				<body >')
			->appendBody('<div class="main">')

			->appendBody( $topnav->body );
			$this->appendBody($bottomnav->body);

			$this->appendBody('<h1>'. $content->title . '</h1>');
			$this->appendBody('<div class="encyclopedia_col1">');

			$image= JHtml::_('image', $content->media, JText::_('COM_CONTACT_IMAGE_DETAILS'), array('align' => 'middle', 'class' =>'caption', 'title'=> $content->address));
			$this->appendBody($image);

			$this->appendBody($content->body);
			$this->appendBody('</div>');

			$this->appendBody('<div class="encyclopedia_col2">');
				$this->appendBody('<ul>');
					$this->appendBody('<li>'.$content->misc.'</li>');
					$this->appendBody('<li>'.$content->con_position.'</li>');
					$this->appendBody('<li>'.$content->state.'</li>');
					$this->appendBody('<li>'.$content->country.'</li>');
				$this->appendBody('</ul>');
			$this->appendBody('</div>');
			$this->appendBody('<div class="clear"></div>');
			$this->appendBody('<div class="encyclopedia_links"><ul>');
			$this->appendBody('<li><a href="'.$content->config->linka.'">'.$content->config->linka_name.'</a>'.'</li>');
			$this->appendBody('<li><a href="'.$content->config->linkb.'">'.$content->config->linkb_name.'</a>'.'</li>');
			$this->appendBody('<li><a href="'.$content->config->linkc.'">'.$content->config->linkc_name.'</a>'.'</li>');
			$this->appendBody('<li><a href="'.$content->config->linkd.'">'.$content->config->linkd_name.'</a>'.'</li>');
			$this->appendBody('<div class="clear"></div>');
			$this->appendBody('</ul></div>');
			$this->appendBody('<div class="clear"></div>');
			$this->appendBody('<div class="goback"></div><a href="javascript:history.go(-1)">Go Back</a></div>');
			$this->appendBody('</body></html>');


