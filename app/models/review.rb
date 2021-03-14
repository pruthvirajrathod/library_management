class Review < ApplicationRecord
  has_many :users
  has_many :books

  ##callback

end
