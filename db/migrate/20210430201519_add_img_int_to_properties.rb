class AddImgIntToProperties < ActiveRecord::Migration[6.1]
  def change
    add_column :properties, :img_int, :string
  end
end
