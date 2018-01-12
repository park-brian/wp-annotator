<?php

/**
 * @package Annotatorjs
 */

/**
 * Plugin Name: Annotator
 * Description: Uses the annotator.js library to enable annotations (https://github.com/openannotation/annotator). The annotator-store should also be running (https://github.com/openannotation/annotator-store)
 */

wp_enqueue_script('annotatorjs', '/wp-content/plugins/annotatorjs/assets/annotator-full.min.js', ['jquery']);
wp_enqueue_script('annotatorjs_enable', '/wp-content/plugins/annotatorjs/assets/annotator-enable.js', ['jquery']);
wp_enqueue_style('annotatorjs_style', '/wp-content/plugins/annotatorjs/assets/annotator.min.css');
