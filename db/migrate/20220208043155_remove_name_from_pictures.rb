class RemoveNameFromPictures < ActiveRecord::Migration[6.0]
  def change
    remove_column :pictures, :name, :string
  end
end
