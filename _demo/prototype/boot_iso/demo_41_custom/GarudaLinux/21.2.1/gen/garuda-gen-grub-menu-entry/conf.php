<?php

	$conf = array();

	$list = array();

	$item = array();
	$item['iso.title'] = 'Garuda Xfce 220101 ISO';
	$item['iso.path'] = '/opt/iso/garuda/220101/garuda-xfce-linux-zen-220101.iso';
	$list[] = $item;

	$item = array();
	$item['iso.title'] = 'Garuda Gnome 220101 ISO';
	$item['iso.path'] = '/opt/iso/garuda/220101/garuda-gnome-linux-zen-220101.iso';
	$list[] = $item;

	$item = array();
	$item['iso.title'] = 'Garuda lxqt-kwin 220101 ISO';
	$item['iso.path'] = '/opt/iso/garuda/220101/garuda-lxqt-kwin-linux-zen-220101.iso';
	$list[] = $item;

	$item = array();
	$item['iso.title'] = 'Garuda Wayfire 220101 ISO';
	$item['iso.path'] = '/opt/iso/garuda/220101/garuda-wayfire-linux-zen-220101.iso';
	$list[] = $item;

	$item = array();
	$item['iso.title'] = 'Garuda Sway 220101 ISO';
	$item['iso.path'] = '/opt/iso/garuda/220101/garuda-sway-linux-zen-220101.iso';
	$list[] = $item;

	$item = array();
	$item['iso.title'] = 'Garuda Qtile 220101 ISO';
	$item['iso.path'] = '/opt/iso/garuda/220101/garuda-qtile-linux-zen-220101.iso';
	$list[] = $item;

	$item = array();
	$item['iso.title'] = 'Garuda i3 220101 ISO';
	$item['iso.path'] = '/opt/iso/garuda/220101/garuda-i3-linux-zen-220101.iso';
	$list[] = $item;

	$item = array();
	$item['iso.title'] = 'Garuda Bspwm 220101 ISO';
	$item['iso.path'] = '/opt/iso/garuda/220101/garuda-bspwm-linux-zen-220101.iso';
	$list[] = $item;

	$item = array();
	$item['iso.title'] = 'Garuda Mate 220101 ISO';
	$item['iso.path'] = '/opt/iso/garuda/220101/garuda-mate-linux-zen-220101.iso';
	$list[] = $item;

	$item = array();
	$item['iso.title'] = 'Garuda Cinnamon 220101 ISO';
	$item['iso.path'] = '/opt/iso/garuda/220101/garuda-cinnamon-linux-zen-220101.iso';
	$list[] = $item;

	$item = array();
	$item['iso.title'] = 'Garuda kde-barebones 220101 ISO';
	$item['iso.path'] = '/opt/iso/garuda/220101/garuda-kde-barebones-linux-lts-220101.iso';
	$list[] = $item;

	$item = array();
	$item['iso.title'] = 'Garuda dr460nized 220101 ISO';
	$item['iso.path'] = '/opt/iso/garuda/220101/garuda-dr460nized-linux-zen-220101.iso';
	$list[] = $item;

	$item = array();
	$item['iso.title'] = 'Garuda dr460nized-gaming 220101 ISO';
	$item['iso.path'] = '/opt/iso/garuda/220101/garuda-dr460nized-gaming-linux-zen-220101.iso';
	$list[] = $item;

	$item = array();
	$item['iso.title'] = 'Garuda dr460nized-blackarch 220101 ISO';
	$item['iso.path'] = '/opt/iso/garuda/220101/garuda-dr460nized-blackarch-linux-zen-220101.iso';
	$list[] = $item;

/*
	$item = array();
	$item['iso.title'] = '';
	$item['iso.path'] = '';
	$list[] = $item;
*/

	$conf['list'] = $list;

	return $conf;
