class AddImgExtToProperties < ActiveRecord::Migration[6.1]
  def change
    add_column :properties, :img_ext, :string
  end
end
