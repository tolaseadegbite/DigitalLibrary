# == Schema Information
#
# Table name: authors
#
#  id         :bigint           not null, primary key
#  bio        :text
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Author < ApplicationRecord
  belongs_to :user
  has_many :resources, dependent: :destroy
end
