class Review < ApplicationRecord
  has_many :users
  has_many :books

  ##callback
  after_create :author_book_count

  def author_book_count
  	self.book.review_count = self.book.review_count.nil? ? 1 : self.review.review_count += 1
	self.book.save
  end
end
