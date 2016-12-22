class CreateBookAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :book_authors do |t|
      t.integer :author_id
      t.integer :book_id
    end
  end
end
