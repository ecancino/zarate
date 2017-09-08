#!/usr/bin/env ruby

require 'sinatra'
require 'slim'

class Zarate < Sinatra::Base
  get '/' do
    slim :index
  end
end

if __FILE__ == $0
  Zarate.run!
end
