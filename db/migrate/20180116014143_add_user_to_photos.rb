class AddUserToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :AA, :string
  end
end
