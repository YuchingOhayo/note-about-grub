#!/usr/bin/env php
<?php

/*
	* https://github.com/samwhelp/note-about-gcin/blob/gh-pages/ubuntu/18.04/tool/prototype/download-eliu-gcin-source/php-dom-xpath-wget/download.php
	* https://www.php.net/manual/en/function.escapeshellcmd.php
*/

// http://php.net/manual/en/function.error-reporting.php
error_reporting(E_ALL & ~(E_WARNING|E_NOTICE));

class App {

	protected $source_url = '';
	protected $source_html_file_path = '';

	public function init ()
	{
		$this->source_html_file_path = __DIR__ . '/source.html';
		$this->source_txt_file_path = __DIR__ . '/source.txt';
		$this->serialize_txt_file_path = __DIR__ . '/serialize.txt';
		$this->serialize_json_file_path = __DIR__ . '/serialize.json';
		$this->serialize_csv_file_path = __DIR__ . '/serialize.csv';
		$this->source_url = 'https://ant.seedhost.eu/arcolinux/iso/v22.01.10';
		$this->conf_file_path = dirname(__DIR__) . '/arco-gen-grub-menu-entry/conf.php';
	}

	public function run ()
	{
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
		$this->downloadSourcePage($this->source_url, $this->source_html_file_path);

		$this->parseSourcePage();

		$data = $this->createMetaData();

		$this->serializeData($this->serialize_txt_file_path, $data);

		//$meta = $this->unserializeData($this->serialize_txt_file_path);

		$this->serializeData_ToJson($this->serialize_json_file_path, $data);

		//$meta = $this->unserializeData_FromJson($this->serialize_json_file_path);

		$this->serializeData_ToCsv($this->serialize_csv_file_path, $data);

		$this->createConfFile($data);


	}

	protected function postRun ()
	{

	}


	protected function downloadSourcePage ($source, $target)
	{
		if (file_exists($target)) {
			return;
		}

		$command = sprintf(
			"wget -c '%s' -O '%s'",
			$source,
			$target
		);

		system($command);

		/*
		$escaped_command = escapeshellcmd($command);
		system($escaped_command);
		*/
	}

	protected function parseSourcePage ()
	{
		$base_file_path = $this->source_html_file_path;
		$base_url = $this->source_url;

		$doc = new DOMDocument; // http://php.net/manual/en/class.domdocument.php

		$doc->preserveWhiteSpace = false; // http://php.net/manual/en/class.domdocument.php#domdocument.props.preservewhitespace

		$doc->loadHTMLFile($base_file_path); // http://php.net/manual/en/domdocument.loadhtmlfile.php

		$xpath = new DOMXPath($doc); // http://php.net/manual/en/class.domxpath.php

		$query = '//a/@href';

		$nodes = $xpath->query($query); // http://php.net/manual/en/domxpath.query.php

		if (is_null($nodes)) { // http://php.net/manual/en/function.is-null.php
			return;
		}


		$list = '';
		// http://php.net/manual/en/class.domnodelist.php
		// http://php.net/manual/en/class.domnode.php
		foreach ($nodes as $node) {

			$source_file_name = $node->nodeValue;

			$source_file_name = ltrim($source_file_name, './');

			if (substr($source_file_name, -4) !== '.iso') { // http://php.net/manual/en/function.strstr.php
				continue;
			}

			$source_url = $base_url . '/' . $source_file_name;

			#echo $source_url . PHP_EOL;

			$list .= $source_url . PHP_EOL;
		}

		$list_file_path_tmp = $this->source_txt_file_path . '.tmp';
		$list_file_path = $this->source_txt_file_path;

		file_put_contents($list_file_path_tmp, $list); // http://php.net/manual/en/function.file-put-contents.php

		$sort_cmd = sprintf(
			"sort -u %s > %s",
			$list_file_path_tmp,
			$list_file_path
		);


		system($sort_cmd);

		unlink($list_file_path_tmp);

		//system('wget -c -i ' . $list_file_path); // http://php.net/manual/en/function.system.php
	}

	protected function createMetaData ()
	{
		$rtn = array();

		//https://www.php.net/manual/en/function.file

		$list_file_path = $this->source_txt_file_path;

		$list = file($list_file_path);

		//var_dump($list);

		foreach ($list as $item) {
			$url = trim($item);
			$wm_data = $this->findWmData_ByUrl($url);
			//var_dump($wm_data);

			$rtn[] = $wm_data;
		}

		return $rtn;
	}

	protected function findUrlFileName ($url)
	{
		$temp = parse_url($url);
		$path = $temp['path'];
		$file_name = basename($path);
		//var_dump($file_name);
		return $file_name;
	}

	protected function findWmData_ByUrl ($url)
	{
		$file_name = $this->findUrlFileName($url);
		$wm_data = $this->findWmData_ByFileName($file_name);

		$wm_data['file'] = $file_name;
		$wm_data['url'] = $url;

		return $wm_data;
	}

	protected function findWmData_ByFileName ($file_name)
	{
		$rtn = array();
		$temp = explode('-', $file_name);

		$wm_title = $temp[0];
		$version = $temp[1];

		if ($wm_title === 'arcolinuxb') {
			$wm_title = $temp[1];
			$version = $temp[2];
		} else if ($wm_title === 'arcolinuxs') {
			if ($version === 'lts') {
				$wm_title =  $temp[0] . '-' . $temp[1];
				$version = $temp[2];
			}
		}


		$rtn['title'] = $wm_title;
		$rtn['version'] = ltrim($version, 'v');

		return $rtn;
	}

	protected function serializeData ($file, $data=array())
	{
		// https://www.php.net/manual/en/function.serialize

		$content = serialize($data);

		file_put_contents($file, $content);

	}


	protected function unserializeData ($file)
	{
		// https://www.php.net/manual/en/function.unserialize.php


		$content = file_get_contents($file);

		$rtn = unserialize($content);

		return $rtn;

	}

	protected function serializeData_ToJson ($file, $data=array())
	{
		// https://www.php.net/manual/en/function.json-encode.php

		$content = json_encode($data);

		file_put_contents($file, $content);

	}

	protected function unserializeData_FromJson ($file)
	{
		// https://www.php.net/manual/en/function.json-decode.php


		$content = file_get_contents($file);

		$rtn = json_decode($content, true);

		return $rtn;

	}

	protected function serializeData_ToCsv ($file, $data=array())
	{
		$rtn = '';
		$rtn .= 'title, version, file, url' . PHP_EOL;

		foreach ($data as $item) {

			$rtn .= sprintf(
				"%s, %s, %s, %s\n",
				$item['title'],
				$item['version'],
				$item['file'],
				$item['url']
			);


		}


		file_put_contents($file, $rtn);

		//return $rtn;

	}

	protected function createConfFile($data)
	{
		$content = $this->createConfFileContent($data);

		//var_dump($content);

		file_put_contents($this->conf_file_path, $content);
	}

	protected function createConfFileContent($data)
	{
		$rtn = '';
		$rtn .= '<?php' . PHP_EOL;
		$rtn .= '	$conf = array();' . PHP_EOL;
		$rtn .= '	$list = array();' . PHP_EOL;

		foreach ($data as $item) {
			//var_dump($data);
			$rtn .= PHP_EOL;
			$rtn .= '	$item = array();' . PHP_EOL;
			$rtn .= sprintf('	$item["iso.title"] = "Arco %s %s ISO";', $item['title'], $item['version']) . PHP_EOL;
			$rtn .= sprintf('	$item["iso.path"] = "/opt/iso/arcolinux/%s/%s";', $item['version'], $item['file']) . PHP_EOL;
			$rtn .= '	$list[] = $item;' . PHP_EOL;

		}

		$rtn .= PHP_EOL;
		$rtn .= '	$conf["list"] = $list;' . PHP_EOL;
		$rtn .= '	return $conf;' . PHP_EOL;

		return $rtn;

	}


}

(new App)->run();
