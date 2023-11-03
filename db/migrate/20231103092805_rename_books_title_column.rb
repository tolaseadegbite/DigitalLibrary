class RenameBooksTitleColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :books, :titl, :title
  end
end
