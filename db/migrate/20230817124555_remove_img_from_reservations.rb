class RemoveImgFromReservations < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :img, :string
  end
end
