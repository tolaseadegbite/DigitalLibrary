# == Schema Information
#
# Table name: books
#
#  id             :bigint           not null, primary key
#  description    :text
#  pages          :integer
#  published_date :date
#  title          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  author_id      :bigint           not null
#  publisher_id   :bigint           not null
#  user_id        :bigint           not null
#
# Indexes
#
#  index_books_on_author_id     (author_id)
#  index_books_on_publisher_id  (publisher_id)
#  index_books_on_user_id       (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (author_id => authors.id)
#  fk_rails_...  (publisher_id => publishers.id)
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
