class CreatGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
    t.string :name
    t.integer :movie_id
    end
  end
end
