# == Schema Information
#
# Table name: loan_durations
#
#  id         :bigint           not null, primary key
#  days       :integer          default(7), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_loan_durations_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class LoanDurationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
