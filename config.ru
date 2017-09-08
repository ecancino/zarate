#!/usr/bin/env ruby

require './app'

root_dir  = Sinatra::Application.root
css_dir   = File.join 'public', 'css'
sass_dir  = File.join 'sass'
img_dir   = File.join 'public', 'img'
js_dir    = File.join 'public', 'js'


preferred_syntax      = :scss
line_comments         = false
output_style          = :expanded

run Zarate
