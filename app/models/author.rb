class Author < ApplicationRecord
	has_many :books, dependent: :destroy


	### validation ###

	validates_presence_of :author
	validates_presence_of :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

end
