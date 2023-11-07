# == Schema Information
#
# Table name: readings
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  resource_id :bigint           not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_readings_on_resource_id              (resource_id)
#  index_readings_on_user_id                  (user_id)
#  index_readings_on_user_id_and_resource_id  (user_id,resource_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (resource_id => resources.id)
#  fk_rails_...  (user_id => users.id)
#
class Reading < ApplicationRecord
  validates :user_id, uniqueness: { scope: :resource_id }
  belongs_to :user
  belongs_to :resource, counter_cache: :readings_count
end
