class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :book
      t.string :description
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
