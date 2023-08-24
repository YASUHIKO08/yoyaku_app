class RemoveInnFromReservations < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :inn, :string
  end
end
