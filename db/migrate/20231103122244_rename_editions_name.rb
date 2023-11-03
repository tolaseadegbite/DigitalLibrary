class RenameEditionsName < ActiveRecord::Migration[7.0]
  def change
    rename_column :editions, :iname, :name
  end
end
