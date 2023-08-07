class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :img
      t.string :inn
      t.string :introduction
      t.integer :people
      t.date :check_in
      t.date :check_out

      t.timestamps
    end
  end
end
