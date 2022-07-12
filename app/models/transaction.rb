class Transaction < ApplicationRecord
  belongs_to :listings
  belongs_to :requests
end
