<?php

class Expected_Views
{
	const CLEAR = '';
	const EXT = 'html';
	const SRC_PATH = 'Resources';
	const NOT_FOUND_COMP = "<!-- {file} not fount -->";
	const PARENT_EXPLODE = '/[a-zA-Z0-9_\-]:[a-zA-Z0-9_\-]/';
	
	const COMPS_DIR = 'views' . DS . 'staticFiles' . DS . 'www';
	const COMP_INIT = '/<comp[\s]*name=["|\']/';
	const COMP_END = '/["|\']+[\s]*\/>/';
	const COMP_RGX = '/<comp[\s]*name=["|\'][a-zA-Z0-9_\-]*["|\']+[\s]*\/>/';
	
	const SRC_INIT = '/<src[\s]*type=["|\'](js|css|png|gif|file)[\s]*["|\']*[\s]*name=["|\']/';
	const SRC_END = '/["|\'][\s]*\/>/';
	const SRC_IMG = "<img id='{id}' src='{path}' />";
	const SRC_JS = "<script src='{path}'></script>";
	const SRC_CSS = "<link rel='stylesheet' type='text/css' href='{path}'>";
	const SRC_RGX = '/<src[\s]*type=["|\'](js|css|png|gif|file)[\s]*["|\']*[\s]*name=["|\'][a-zA-Z0-9_\-]+["|\'][\s]*\/>/';
}