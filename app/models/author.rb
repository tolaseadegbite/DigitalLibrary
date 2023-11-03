# == Schema Information
#
# Table name: authors
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Author < ApplicationRecord
  belongs_to :user
  has_many :books, dependent: :destroy
end
