class AddGenresToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :genre_id, :integer
  end
end
