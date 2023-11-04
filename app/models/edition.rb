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
class Edition < ApplicationRecord
  validates :resource_id, presence: true
  belongs_to :user
  belongs_to :resource

end
