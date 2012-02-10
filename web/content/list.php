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
	 * Currently the query supports type, category and featured selectors.
	 * It should eventually also allow created_user_id, modified_user_id and state.
	 * Also it needs limit/pagination.
	 */

		jimport('joomla.database.database');


		/* Get the list details from the request
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
		if ($catid)
		{
			$selectlist->where('catid = ' . $select->quote($catid));
		}
		$items->setQuery($selectlist);

		$list = $items->loadObjectList();
//var_dump($list[0]->content_id);die;
		$factory  = JContentFactory::getInstance('', $this->dbo, $this);
		$topnav = $factory->getContent('Navigation')->load(1510);
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
					<link rel="stylesheet" href="templates/simplecontent/css/template.css" type="text/css" />
					<title>A list of things</title>
				</head>
				<body >')
			->appendBody('<div class="main">')
			->appendBody( $topnav->body )
			->appendBody('<dl>');

		$this->appendBody('<h1>A list of '. $typeof . '</h1>');
		foreach ($list as $item )
		{
		$content = $factory->getContent($typeof)->load($item->content_id);
					$this->appendBody('<dt>');
					if ($typeof == 'weblinks')
					{
						$this->appendBody('<a href="'.$content->url.'">');
					}
					$this->appendBody($content->title);
					if ($typeof == 'weblinks')
					{
						$this->appendBody('</a></dt>');
					}
					$this->appendBody('<dt>');
					$this->appendBody('<dd>' . $content->body . '</dd>');
		}
		$this->appendBody('</dl>');
		$this->appendBody('</body></html>');

