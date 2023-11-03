# == Schema Information
#
# Table name: publishers
#
#  id         :bigint           not null, primary key
#  about      :text
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
require "test_helper"

class PublisherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
