class AddPhotoToItem < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :poster_url, :string
  end
end
