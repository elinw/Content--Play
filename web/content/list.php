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

	/* This is for making on the fly lists of items.
	 * Currently the query supports type and featured selectors.
	 * It should eventually also allow created_user_id, modified_user_id and state.
	 * You can also subset on category id and extension (for categories). We need to make
	 * filtering on items from the secondary table more dynamic.
	 * Also it needs limit/pagination.
	 */

		jimport('joomla.database.database');


		/* Get the list detnails from the request
		 * This can include type, category and featured alone or in combination
		 * form: index.php?type=list&of=weblinks&category=12&featured
		 */
		try
		{
			if (($this->input->get('of')))
			{
				$typeof = $this->input->get('of');
			}
			else
			{
				$typeof = null;
			}
			if ($this->input->get('featured'))
			{
				$featured = true;
			}
			else
			{
				$featured = false;
			}
			if ($this->input->get('category'))
			{
				$catid =  $this->input->get('category') ;
			}
			else
			{
				$catid = null;
			}
			if ($this->input->get('extension'))
			{
				$extension =  $this->input->get('extension') ;
			}
			else
			{
				$extension = null;
			}
			$items = $this->dbo;
			$selectlist  = $items->getQuery(true);
			$selectlist->select('content_id');
			$selectlist->from('#__content as c');
			if ($typeof)
			{
				$selectlist->from('#__content_types as t');
				$selectlist->where('c.type_id = t.type_id AND t.alias =' . $selectlist->quote($typeof));
			}
			if ($featured)
			{
				$selectlist->where('featured = 1');
			}
			/*if ($catid)
			{
				$selectlist->where('catid = ' . $selectlist->quote($catid));
			}*/
			$items->setQuery($selectlist);
			$list = $items->loadObjectList();
			$factory  = JContentFactory::getInstance('', $this->dbo, $this);
		}
		catch (RuntimeException $e)
		{
			// handle error
		}
		if ($typeof != 'article')
		{
			$this->appendBody('<h1>A list of '. $typeof . '</h1>');
		}
		else
			$this->appendBody('<h1>A list of '. $typeof . 's</h1>');
		$this->appendBody('<dl>');
		foreach ($list as $item )
		{

		$content = $factory->getContent($typeof)->load($item->content_id);
			if (isset($catid) && $content->catid != $catid)
			{
				continue;
			}
			if (isset($extension) && $content->extension != $extension)
			{
				continue;
			}
			$this->appendBody('<dt>');
			if ($typeof == 'weblinks')
			{
				$this->appendBody('<a href="'.$content->url.'">');
			}
			else
			{
				$this->appendBody('<a href="index.php?type='.$typeof.'&content_id='.$content->content_id.'">');
			}
			$this->appendBody($content->title );

			$this->appendBody('</a></dt>');

			$this->appendBody('<dd>' . $content->body . '</dd>');
		}
		$this->appendBody('</dl>');


