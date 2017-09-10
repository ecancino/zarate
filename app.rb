#!/usr/bin/env ruby

require 'sinatra'
require 'slim'
require 'json'

require './models/movie'

class Zarate < Sinatra::Base
  get '/' do
    @movies = Movie.where(year: 2008)
    slim :index
  end

  get '/movies' do
    content_type :json
    movies = Movie.all
    movies.to_json
  end

  get '/movies/:id' do
    content_type :json
    id = params[:id]
    movie = Movie.find(id: id)
    movie.to_json
  end
end

if __FILE__ == $0
  Zarate.run!
end
