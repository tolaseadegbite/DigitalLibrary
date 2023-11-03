class RenameBooksTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :books, :resources
  end
end
