class Category < ApplicationRecord
	has_many :post_thread_category_relations
	has_many :categories, through: :post_thread_category_relations
end
