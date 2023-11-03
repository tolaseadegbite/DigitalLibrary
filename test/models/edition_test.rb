# == Schema Information
#
# Table name: editions
#
#  id             :bigint           not null, primary key
#  name           :string
#  published_date :date
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  resource_id    :bigint           not null
#  user_id        :bigint           not null
#
# Indexes
#
#  index_editions_on_resource_id  (resource_id)
#  index_editions_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (resource_id => resources.id)
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class EditionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
