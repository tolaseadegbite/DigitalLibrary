# == Schema Information
#
# Table name: resource_types
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_resource_types_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class ResourceType < ApplicationRecord
  belongs_to :user
  has_many :resources, dependent: :destroy
end
