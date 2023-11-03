# == Schema Information
#
# Table name: editions
#
#  id             :bigint           not null, primary key
#  iname          :string
#  published_date :date
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  book_id        :bigint           not null
#  user_id        :bigint           not null
#
# Indexes
#
#  index_editions_on_book_id  (book_id)
#  index_editions_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (book_id => books.id)
#  fk_rails_...  (user_id => users.id)
#
class Edition < ApplicationRecord
  belongs_to :user
  belongs_to :book
end
