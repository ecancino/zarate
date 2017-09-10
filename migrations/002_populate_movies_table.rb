# create an items table

require 'sequel'
require 'csv'

Sequel.migration {
  up do
    CSV.foreach('database/movie_metadata.csv') do |row|
      director, duration, gross, title, imdb_link, language, country, budget, year, imdb_score = row
      DB[:movies].insert(
        [:title, :director, :duration, :gross, :language, :country, :budget, :year, :imdb_score, :imdb_link],
        [title, director, duration, gross, language, country, budget, year, imdb_score, imdb_link]
      )
    end
  end

  down do
    drop_table(:movies)
  end
}
