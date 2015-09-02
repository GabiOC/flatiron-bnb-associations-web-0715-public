class Listing < ActiveRecord::Base
  belongs_to :neighborhood
  belongs_to :host, class_name: "User"
  has_many :reservations
  has_many :reviews, through: :reservations
  has_many(:guests, {through: :reservations, class_name: "User"})
end

# listing id = 4
# What is the host? host_id = 5
# default: host table and get hte host with the Id of 5
# Override: user table and get the user with the ID of 5
