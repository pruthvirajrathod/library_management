class Book < ApplicationRecord
  belongs_to :author

  ### validation

  validates_presence_of :book, :author_id


  #### callbacks

  after_create :author_book_count

  def author_book_count
  	self.author.book_count = self.author.book_count.nil? ? 1 : self.author.book_count += 1
	self.author.save
  end
  
end
