# create an items table

require 'sequel'

Sequel.migration {
  up do
    create_table :movies do
      primary_key :id
      String :title
      String :director
      Integer :duration
      String :language
      String :country
      Integer :year
      Integer :gross
      Bigint :budget
      Float :imdb_score
      String :imdb_link
    end
  end

  down do
    drop_table(:movies)
  end
}
