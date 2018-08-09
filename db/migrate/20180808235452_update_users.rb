class UpdateUsers < ActiveRecord::Migration
  def change
        remove_column :users, :genre_id, :integer
  end
end
