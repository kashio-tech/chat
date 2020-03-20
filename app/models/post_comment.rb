class PostComment < ApplicationRecord
	belongs_to :user
	belongs_to :post_thread
	attachment :image
end
