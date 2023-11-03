# == Schema Information
#
# Table name: authors
#
#  id         :bigint           not null, primary key
#  bio        :text
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
require "test_helper"

class AuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
