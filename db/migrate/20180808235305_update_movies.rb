class UpdateMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :genre_id, :integer
    add_column :movies, :genre, :string
  end
end
