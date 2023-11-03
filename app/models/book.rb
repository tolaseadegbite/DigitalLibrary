# == Schema Information
#
# Table name: books
#
#  id             :bigint           not null, primary key
#  description    :text
#  pages          :integer
#  published_date :date
#  title          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  author_id      :bigint           not null
#  category_id    :bigint           not null
#  publisher_id   :bigint           not null
#  user_id        :bigint           not null
#
# Indexes
#
#  index_books_on_author_id     (author_id)
#  index_books_on_category_id   (category_id)
#  index_books_on_publisher_id  (publisher_id)
#  index_books_on_user_id       (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (author_id => authors.id)
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (publisher_id => publishers.id)
#  fk_rails_...  (user_id => users.id)
#
class Book < ApplicationRecord
    belongs_to :user
    belongs_to :author
    belongs_to :category
    belongs_to :publisher

    has_many :editions, dependent: :destroy
end
