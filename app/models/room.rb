class Room < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["address", "charge", "created_at", "id", "img", "img_data", "inn", "introduction", "updated_at", "user_id"]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end

  validates :inn, presence: true
  validates :address, presence: true
  validates :introduction, presence: true
  validates :charge, presence: true
  validate :charge_min

  def charge_min
    if charge.present? && charge < 1000
      errors.add(:charge,"は1000円以上で入力してください") 
    end
  end
  
  has_one_attached:img_data
  has_many:reservations
  belongs_to:user
end
