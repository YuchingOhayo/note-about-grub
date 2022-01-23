#!/usr/bin/env php
<?php

	require_once(__DIR__ . '/conf.php');
	require_once(__DIR__ . '/util.php');

class App {

	protected $_Util;
	protected $_Conf;

	public function init ()
	{
		$this->_Util = new Util;
		$this->_Conf = include(__DIR__ . '/conf.php');
	}

	public function run ()
	{
		//echo __METHOD__;
		$this->init();
		$this->preRun();
		$this->doRun();
		$this->postRun();

	}

	protected function preRun ()
	{

	}

	protected function doRun ()
	{
		$content = $this->createMenuEntry();

		$file = dirname(dirname(__DIR__)) . '/custom.cfg';
		//$file = __DIR__ . '/custom.cfg';
		file_put_contents($file, $content);

	}

	protected function postRun ()
	{

	}

	protected function createMenuEntry()
	{
		$view_menu_entry = __DIR__ . '/view-menu-entry.php';

		$list = $this->_Conf['list'];

		$rtn = '';

		foreach ($list as $item) {
			$rtn .= $menu_entry = $this->_Util->renderStr($view_menu_entry, $item);
		}


		return $rtn;
	}
}

(new App)->run();
