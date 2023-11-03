class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :titl
      t.text :deescription
      t.date :published_date
      t.integer :pages

      t.timestamps
    end
  end
end
