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

		//  get RSS parsed object
		$options = array();
		$options['rssUrl']		= $content->link;
		$options['cache_time']	= $content->cache_time;

		$rssDoc = JFactory::getFeedParser($content->link);

		if ($rssDoc == false) {
			$msg = JText::_('COM_NEWSFEEDS_ERRORS_FEED_NOT_RETRIEVED');
			return;
		}
		$lists = array();

		// channel header and link
		$newsfeed->channel['title']			= $rssDoc->get_title();
		$newsfeed->channel['link']			= $rssDoc->get_link();
		$newsfeed->channel['description']	= $rssDoc->get_description();
		$newsfeed->channel['language']		= $rssDoc->get_language();

		// channel image if exists
		$newsfeed->image['url']		= $rssDoc->get_image_url();
		$newsfeed->image['title']	= $rssDoc->get_image_title();
		$newsfeed->image['link']	= $rssDoc->get_image_link();
		$newsfeed->image['height']	= $rssDoc->get_image_height();
		$newsfeed->image['width']	= $rssDoc->get_image_width();

		// items
		$newsfeed->items = $rssDoc->get_items();

		// feed elements
		$newsfeed->items = array_slice($newsfeed->items, 0, $content->numarticles);

		// feed display order
		$feed_display_order = $content->config->feed_display_order;
		if ($feed_display_order == 'asc') {
			$newsfeed->items = array_reverse($newsfeed->items);
		}

		$this->appendBody('<html>
				<head>
					<link rel="stylesheet" href="templates/simplecontent/css/template.css" type="text/css" />
					<title>Hello UCM! ' . $content->title  . '</title>
				</head>
				<body >');
		$this->appendBody('<div class="main">');
		$this->appendBody( $topnav->body );

		$this->appendBody('<ol>');

		foreach ($newsfeed->items as $item)
		{
		$this->appendBody('<li>');
			if (!is_null($item->get_link()))
			{
				$this->appendBody('<a href="'.$item->get_link(). '" target="_blank">'
					. $item->get_title() . '</a>');
			}
			if ($content->config->show_item_description && $item->get_description())
				{
				$this->appendBody('<div class="feed-item-description">');
				 $text = $item->get_description();
				if($content->confige->show_feed_image != 1)
				{
					$text = JFilterOutput::stripImages($text);
				}
				$text = JHtml::_('string.truncate', $text, $content->config->feed_character_count);
					echo str_replace('&apos;', "'", $text);

				$this->appendBody('</div>');
			}
			$this->appendBody('</li>');
		}
		$this->appendBody('</ol>');

		$this->appendBody('</body></html>');
