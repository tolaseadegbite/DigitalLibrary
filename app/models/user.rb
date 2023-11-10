# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  admin                  :boolean          default(FALSE), not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  matric_no              :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  username               :string           default(""), not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true
  has_many :resources, dependent: :destroy
  has_many :authors, dependent: :destroy
  has_many :publishers, dependent: :destroy
  has_many :categories, dependent: :destroy
  has_many :potential_reads, dependent: :destroy
  has_many :potential_read_resources, through: :potential_reads, source: :resource
  has_many :readings, dependent: :destroy
  has_many :reading_resources, through: :readings, source: :resource
  has_many :reads, dependent: :destroy
  has_many :read_resources, through: :reads, source: :resource
  has_many :loans, dependent: :destroy
  has_many :borrowed_resources, through: :loans, source: :resource
  has_many :resource_languages, dependent: :destroy
  has_many :loan_durations, dependent: :destroy
  has_many :waitlists, dependent: :destroy

  def name
    username
  end
end
