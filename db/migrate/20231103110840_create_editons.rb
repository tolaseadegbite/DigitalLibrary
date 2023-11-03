class CreateEditons < ActiveRecord::Migration[7.0]
  def change
    create_table :editons do |t|
      t.string :name
      t.date :published_date
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
