# == Schema Information
#
# Table name: loans
#
#  id               :bigint           not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  loan_duration_id :bigint           not null
#  resource_id      :bigint           not null
#  user_id          :bigint           not null
#
# Indexes
#
#  index_loans_on_loan_duration_id         (loan_duration_id)
#  index_loans_on_resource_id              (resource_id)
#  index_loans_on_user_id                  (user_id)
#  index_loans_on_user_id_and_resource_id  (user_id,resource_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (loan_duration_id => loan_durations.id)
#  fk_rails_...  (resource_id => resources.id)
#  fk_rails_...  (user_id => users.id)
#
class Loan < ApplicationRecord
  validates :user_id, uniqueness: { scope: :resource_id }
  
  belongs_to :user
  belongs_to :resource, counter_cache: :loans_count
  belongs_to :loan_duration
end
