class RenameBooksDescriptionColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :books, :deescription, :description
  end
end
