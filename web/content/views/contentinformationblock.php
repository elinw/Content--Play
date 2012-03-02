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


/* This provides a universal content information block with the common fields. */

					$this->appendBody('<dl class="article-info">');
						$this->appendBody('<dt class="article-info-term"><?php  echo JText::_('COM_CONTENT_ARTICLE_INFO'); ?></dt>');
						if ($content->config->show_create_date)
						{
							$this->appendBody('<dd class="create">' . $content->created_date.'</dt>');
						}
						if ($content->config->show_modify_date)
						{
							$this->appendBody('<dd class="modified">' .$content->modified_date .'</dt>');
						}
						if ($content->config->show_publish_date)
						{
							$this->appendBody('<dd class="published">' . $content->publish_start_date.'</dt>');
						}
						if ($content->config->show_author)
						{
							$this->appendBody('<dd class="author">' .  $content->created_user_id.'</dt>');
						}
						if ($content->config->show_hits)
						{
							$this->appendBody('<dd class="hits">' . $content->hits .'</dt>');
						}
						if ($content->config->show_likes)
						{
							$this->appendBody('<dd class="likes">' . $content->likes .'</dt>');
						}
					$this->appendBody('</dl>');
