# == Schema Information
#
# Table name: resources
#
#  id                    :bigint           not null, primary key
#  copies                :integer
#  description           :text
#  image_url             :string
#  loans_count           :integer
#  name                  :string
#  pages                 :integer
#  pdf_url               :string
#  potential_reads_count :integer          default(0), not null
#  published_date        :date
#  readings_count        :integer          default(0), not null
#  reads_count           :integer          default(0), not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  author_id             :bigint           not null
#  category_id           :bigint           not null
#  publisher_id          :bigint           not null
#  resource_language_id  :bigint           not null
#  resource_type_id      :bigint           not null
#  user_id               :bigint           not null
#
# Indexes
#
#  index_resources_on_author_id             (author_id)
#  index_resources_on_category_id           (category_id)
#  index_resources_on_publisher_id          (publisher_id)
#  index_resources_on_resource_language_id  (resource_language_id)
#  index_resources_on_resource_type_id      (resource_type_id)
#  index_resources_on_user_id               (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (author_id => authors.id)
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (publisher_id => publishers.id)
#  fk_rails_...  (resource_language_id => resource_languages.id)
#  fk_rails_...  (resource_type_id => resource_types.id)
#  fk_rails_...  (user_id => users.id)
#
class Resource < ApplicationRecord
    validates :copies, :description, :name, :pages, :published_date, :author_id, :category_id, :publisher_id, :resource_language_id, :resource_type_id, :user_id, presence: true

    belongs_to :resource_type
    validates :name, :author_id, :category_id, :publisher_id, :user_id, presence: true
    belongs_to :user
    belongs_to :author
    belongs_to :category
    belongs_to :publisher
    belongs_to :resource_language

    has_many :potential_reads, dependent: :destroy
    has_many :readings, dependent: :destroy
    has_many :reads, dependent: :destroy
    has_many :waitlists, dependent: :destroy
    has_many :loans, dependent: :destroy
    has_many :borrowers, through: :loans, source: :user
    has_many :want_to_read_users, through: :potential_reads, source: :user
    has_many :reading_users, through: :readings, source: :user
    has_many :read_users, through: :reads, source: :user

    # def self.search(search)
    #     if search
    #         where(["name LIKE ?","%#{params[:search]}%"])
    #     else
    #         order(id: :desc)
    #     end
    # end

    has_one_attached :cover_image

    has_one_attached :file

    validates :file, presence: true,   content_type: { in: %w[application/pdf],
                                      message: "must be a pdf format" },
                      size:         { less_than: 50.megabytes,
                                      message:   "should be less than 5MB" }

    validates :cover_image, presence: true,   content_type: { in: %w[image/jpeg image/png],
                                      message: "must be a valid image format" },
                      size:         { less_than: 1.megabytes,
                                      message:   "should be less than 1MB" }
end
