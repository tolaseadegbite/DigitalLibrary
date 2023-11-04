# == Schema Information
#
# Table name: reads
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  resource_id :bigint           not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_reads_on_resource_id              (resource_id)
#  index_reads_on_user_id                  (user_id)
#  index_reads_on_user_id_and_resource_id  (user_id,resource_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (resource_id => resources.id)
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class ReadTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
