# == Schema Information
#
# Table name: editons
#
#  id             :bigint           not null, primary key
#  name           :string
#  published_date :date
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  book_id        :bigint           not null
#  user_id        :bigint           not null
#
# Indexes
#
#  index_editons_on_book_id  (book_id)
#  index_editons_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (book_id => books.id)
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class EditonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
