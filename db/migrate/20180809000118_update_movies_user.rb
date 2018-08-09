class UpdateMoviesUser < ActiveRecord::Migration
  def change
    remove_column :movies, :user_id, :integer
    add_column :movies, :user, :string
  end
end
