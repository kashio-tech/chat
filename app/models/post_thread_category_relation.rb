class PostThreadCategoryRelation < ApplicationRecord
	belongs_to :post_thread
	belongs_to :category
end
