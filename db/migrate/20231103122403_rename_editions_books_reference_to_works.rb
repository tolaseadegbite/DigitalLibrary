class RenameEditionsBooksReferenceToWorks < ActiveRecord::Migration[7.0]
  def change
    rename_column :editions, :book_id, :resource_id
  end
end
