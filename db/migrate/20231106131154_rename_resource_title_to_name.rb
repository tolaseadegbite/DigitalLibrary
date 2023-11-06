class RenameResourceTitleToName < ActiveRecord::Migration[7.0]
  def change
    rename_column :resources, :title, :name
  end
end
