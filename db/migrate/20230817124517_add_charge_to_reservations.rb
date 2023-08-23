class AddChargeToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :charge, :string
  end
end
