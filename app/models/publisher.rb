# == Schema Information
#
# Table name: publishers
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Publisher < ApplicationRecord
  belongs_to :user
  has_many :books, dependent: :destroy
end
