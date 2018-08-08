class CreatMovies < ActiveRecord::Migration
  def change
      create_table :movies do |t|
      t.string :name
      t.integer :release_year
      t.integer :user_id
      t.integer :genre_id
    end
  end
end
