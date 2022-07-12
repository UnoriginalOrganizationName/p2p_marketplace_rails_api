class Request < ApplicationRecord
  belongs_to :users
  belongs_to :listings
end
