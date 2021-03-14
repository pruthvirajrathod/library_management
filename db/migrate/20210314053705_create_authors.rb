class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :author
      t.string :email
      t.string :experience
      t.integer :book_count

      t.timestamps
    end
  end
end
