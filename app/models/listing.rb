class Listing < ApplicationRecord
  belongs_to :users
  has_many :transactions
  #has_many :requests
end
