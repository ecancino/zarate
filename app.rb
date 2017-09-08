#!/usr/bin/env ruby

require 'sinatra'
require 'slim'
require 'json'

class Zarate < Sinatra::Base
  get '/' do
    slim :index
  end

  get '/file.json' do
    content_type :json
    { :key1 => 'value1', :key2 => 'value2' }.to_json
  end
end

if __FILE__ == $0
  Zarate.run!
end
