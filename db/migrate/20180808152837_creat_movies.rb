class CreatMovies < ActiveRecord::Migration
  def change
      create_table :movies do |t|
      t.string :name
      t.integer :release_year
    end
  end
end
