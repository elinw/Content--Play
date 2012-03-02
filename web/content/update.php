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

//
/**
 * Include for creation of an item
 */

		// Need ACL here $canUpdate
		try
		{
		jimport('joomla.form.form');
		jimport('joomla.form.helper');
		$factory->paths->forms = JForm::addFormPath(JPATH_SITE . '/models/forms');
		$factory->paths->fields = JForm::addFieldPath(JPATH_SITE . '/models/fields');
		$content = $factory->getContent($type)->load($content_id)->checkout();
		$form =  $factory->getForm($type);
		$form->bind($content->dump());
				$this->appendBody($form->getLabel('title'));
				$this->appendBody($form->getInput('title'));
				$this->appendBody($form->getLabel('body'));
				$this->appendBody($form->getInput('body'));
				$this->appendBody($form->getLabel('alias'));
				$this->appendBody($form->getInput('alias'));
				$this->appendBody($form->getLabel('state'));
				$this->appendBody($form->getInput('state'));
				$this->appendBody($form->getLabel('featured'));
				$this->appendBody($form->getInput('featured'));

		}
		catch (RuntimeException $e)
		{
			// handle error
			$this->appendBody('This is checked out');
		}
				// Include the form for the given type
				/*
			$typeform = dirname(__FILE__) .'/views/'.$type .'form.php';
			if (file_exists($typeform)){
				include_once ($typeform);
			}
				 */
			// Doesn't do anything yet.
			$this->appendBody('
					<input type="hidden" name="task" value="" />

				<div class="formelm-buttons">
			<button type="button" onclick="Joomla.submitbutton("content.save")">'.
				  JText::_("JSAVE") .'
			</button>
			<button type="button" onclick="Joomla.submitbutton("content.cancel")">'
				.  JText::_("JCANCEL") .'
			</button>
			</div>'.

					JHtml::_( "form.token" ) );



