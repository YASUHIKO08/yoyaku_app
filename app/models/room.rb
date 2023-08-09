class Room < ApplicationRecord
  has_one_attached:img_data
  has_many:reservations
end
