# == Schema Information
#
# Table name: searches
#
#  id                   :bigint           not null, primary key
#  keyword              :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  author_id            :integer
#  category_id          :integer
#  publisher_id         :integer
#  resource_language_id :integer
#  resource_type_id     :integer
#
require "test_helper"

class SearchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
