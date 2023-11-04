# == Schema Information
#
# Table name: resources
#
#  id               :bigint           not null, primary key
#  description      :text
#  pages            :integer
#  published_date   :date
#  title            :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  author_id        :bigint           not null
#  category_id      :bigint           not null
#  publisher_id     :bigint           not null
#  resource_type_id :bigint           not null
#  user_id          :bigint           not null
#
# Indexes
#
#  index_resources_on_author_id         (author_id)
#  index_resources_on_category_id       (category_id)
#  index_resources_on_publisher_id      (publisher_id)
#  index_resources_on_resource_type_id  (resource_type_id)
#  index_resources_on_user_id           (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (author_id => authors.id)
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (publisher_id => publishers.id)
#  fk_rails_...  (resource_type_id => resource_types.id)
#  fk_rails_...  (user_id => users.id)
#
class Resource < ApplicationRecord
    belongs_to :resource_type
    validates :title, :author_id, :category_id, :publisher_id, :user_id, presence: true
    belongs_to :user
    belongs_to :author
    belongs_to :category
    belongs_to :publisher

    has_many :editions, dependent: :destroy
    has_many :potential_reads, dependent: :destroy
    has_many :readings, dependent: :destroy
    has_many :reads, dependent: :destroy

    has_one_attached :cover_image

    validates :cover_image, presence: true,   content_type: { in: %w[image/jpeg image/png],
                                      message: "must be a valid image format" },
                      size:         { less_than: 1.megabytes,
                                      message:   "should be less than 1MB" }
end
