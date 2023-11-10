class CreateSearches < ActiveRecord::Migration[7.0]
  def change
    create_table :searches do |t|
      t.string :keyword
      t.integer :category_id
      t.integer :author_id
      t.integer :publisher_id
      t.integer :resource_language_id
      t.integer :resource_type_id

      t.timestamps
    end
  end
end
