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



			$this->appendBody('<h1>'. $content->title . '</h1>');

			$images = json_decode($content->media);
			// Article information block
			// We have to be careful here because not all content types may have the parameters.
			if ((isset($content->config->show_create_date) && $content->config->show_create_date)
			|| (isset($content->config->show_modify_date) && $content->config->show_modify_date)
			|| (isset($content->config->show_publish_date) && $content->config->show_publish_date)
			|| (isset($content->config->show_author) && $content->config->show_author)
			|| (isset($content->config->show_hits) && $content->config->show_hits)
			|| (isset($content->config->show_likes) && $content->config->show_likes)
			)
				{
					include_once(dirname(__FILE__) .'/contentinformationblock.php');
				}
			if ((isset($content->config->show_intro) && ($content->config->show_intro !== false))
				|| !($content->fulltext))
			{
				// We'll want events later
				// echo $this->item->event->afterDisplayTitle;
				$this->appendBody($content->body);
			}
			// We'll want events later
			//echo $this->item->event->beforeDisplayContent;
			if ($images)
			{
				$this->appendBody('<div class="image-fulltext">
				<img src="'.$images->image_fulltext.'" alt="'.$images->image_fulltext_alt . '"></div><div class="clear"></div>');
				$this->appendBody($images->image_fulltext_caption);
			}
			$this->appendBody($content->fulltext);
			// We'll want events later
			//echo $this->item->event->afterDisplayContent;
			$this->appendBody('<div class="goback"></div><a href="javascript:history.go(-1)">Go Back</a></div>');
			$this->appendBody('</body></html>');
// Todo; Add URLs feature and real handling of strings. Also category links.
