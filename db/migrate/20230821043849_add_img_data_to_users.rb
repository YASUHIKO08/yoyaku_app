class AddImgDataToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :img_data, :binary
  end
end
