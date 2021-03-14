class Book < ApplicationRecord
  belongs_to :author

  ### validation

  validates_presence_of :book, :author_id
end
