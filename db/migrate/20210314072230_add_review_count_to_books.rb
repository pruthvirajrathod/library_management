class AddReviewCountToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :review_count, :integer
  end
end
