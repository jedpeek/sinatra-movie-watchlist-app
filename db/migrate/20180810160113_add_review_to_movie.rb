class AddReviewToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :review, :string
  end
end
