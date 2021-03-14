class User < ApplicationRecord
	has_many :userbooks
	has_many :books, through: :userbooks
	has_many :reviews
