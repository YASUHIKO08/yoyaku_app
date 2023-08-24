class AddImgDataToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :img_data, :binary
  end
end
