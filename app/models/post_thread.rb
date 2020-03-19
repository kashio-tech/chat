class PostThread < ApplicationRecord
	belongs_to :user
	attachment :image
end
