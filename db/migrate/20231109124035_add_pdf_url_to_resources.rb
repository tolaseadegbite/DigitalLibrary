class AddPdfUrlToResources < ActiveRecord::Migration[7.0]
  def change
    add_column :resources, :pdf_url, :string
  end
end
