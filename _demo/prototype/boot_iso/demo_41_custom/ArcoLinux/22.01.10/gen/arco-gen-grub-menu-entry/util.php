<?php

/*
	* https://www.php.net/manual/en/ref.outcontrol.php
	* https://www.php.net/manual/en/function.include.php
	* https://www.php.net/manual/en/function.ob-get-contents.php
*/

class Util {

	public function render ($file, $data=array())
	{
		include($file);
	}

	public function renderStr ($file, $data=array())
	{
		$rtn = '';

		ob_start();
		ob_clean();
		$this->render($file, $data);
		$rtn = ob_get_contents();
		ob_end_clean();

		return $rtn;
	}

	public function dump ($val)
	{
		var_dump($val);
	}

	public function dumpStr ($val)
	{
		$rtn = '';

		ob_start();
		ob_clean();
		$this->dump($val);
		$rtn = ob_get_contents();
		ob_end_clean();

		return $rtn;
	}

}
