class AddDescriptionToPublishers < ActiveRecord::Migration[7.0]
  def change
    add_column :publishers, :about, :text
  end
end
