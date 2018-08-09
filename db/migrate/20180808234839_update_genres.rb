class UpdateGenres < ActiveRecord::Migration
  def change
    remove_column :genres, :user_id, :integer
  end
end
