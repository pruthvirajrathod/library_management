class Userbook < ApplicationRecord
  belongs_to :book
  belongs_to :user

  ### callback

  after_create :user_book_count

  def user_book_count
  	self.user.book_count = self.user.book_count.nil? ? 1 : self.user.book_count += 1
	self.user.save
  end
end
