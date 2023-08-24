class Reservation < ApplicationRecord
  validates :check_in, presence: true
  validates :check_out, presence: true
  validates :people, presence: true
  validate :before_date
  validate :people_min

  def before_date
    if check_in.present? && check_out.present? && check_in > check_out
      errors.add(:check_in, "をチェックアウト以降の日付で指定することは出来ません")
    end
  end

  def people_min
    if people.present? && people < 1
    errors.add(:people,"は１以上の数値を入力してください")
    end
  end

  belongs_to :room
  belongs_to :user
end