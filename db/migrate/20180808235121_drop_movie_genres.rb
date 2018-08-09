class DropMovieGenres < ActiveRecord::Migration
  def change
    drop_table :movie_genres
  end
end
