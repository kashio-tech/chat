class PostCommentsController < ApplicationController
	def create
		post_thread = PostThread.find(params[:post_thread_id])
		comment = current_user.post_comments.new(post_comment_params)
		comment.post_thread_id = post_thread.id
		comment.save
		redirect_to post_thread_path(post_thread)
	end
	private
	def post_comment_params
		params.require(:post_comment).permit(:user_id, :post_thread_id, :image, :comment)
	end
end
