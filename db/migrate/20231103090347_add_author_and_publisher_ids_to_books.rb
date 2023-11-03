class AddAuthorAndPublisherIdsToBooks < ActiveRecord::Migration[7.0]
  def change
    add_reference :books, :author, null: false, foreign_key: true
    add_reference :books, :publisher, null: false, foreign_key: true
  end
end
