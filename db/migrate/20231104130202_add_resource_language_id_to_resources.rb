class AddResourceLanguageIdToResources < ActiveRecord::Migration[7.0]
  def change
    add_reference :resources, :resource_language, null: false, foreign_key: true
  end
end
