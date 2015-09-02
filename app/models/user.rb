class User < ActiveRecord::Base
  has_many :listings, foreign_key: "host_id"
  has_many :trips, class_name: "Reservation", foreign_key: "guest_id"
  has_many :reviews, foreign_key: "guest_id"
  has_many :reservations, through: :listings, foreign_key: "host_id"
end

## EXAMPLE

# USER id = 2 (bob)
# DEFAULT: GO TO THE LISTINGS TABLE, GRAB Listings with user_id = 2
# OVERRIDE user_id to host_id
