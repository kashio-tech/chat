class PostThread < ApplicationRecord
	belongs_to :user
	has_many :post_comments
	has_many :categories, through: :post_thread_category_relations
	attachment :image
end
