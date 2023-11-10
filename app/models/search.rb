# == Schema Information
#
# Table name: searches
#
#  id                   :bigint           not null, primary key
#  keyword              :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  author_id            :integer
#  category_id          :integer
#  publisher_id         :integer
#  resource_language_id :integer
#  resource_type_id     :integer
#
class Search < ApplicationRecord
    
    def search_resources
        resources = Resource.all

        resources = resources.where(["name LIKE ?", "%#{keyword}%"]) if keyword.present?
        resources = resources.where(["#{category_id} LIKE ?", category_id]) if category_id.present?
        resources = resources.where(["author_id LIKE ?", author_id]) if author_id.present?
        resources = resources.where(["publisher_id LIKE ?", publisher_id]) if publisher_id.present?
        resources = resources.where(["resource_language_id LIKE ?", resource_language_id]) if resource_language_id.present?
        resources = resources.where(["resource_type_id LIKE ?", resource_type_id]) if resource_type_id.present?

        return resources
    end
end
