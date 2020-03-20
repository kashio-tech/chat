class PostThreadsController < ApplicationController
	before_action :authenticate_user!
	def index
		#@post_threads = PostThread.all
	end
	def new
		@post_thread = PostThread.new
		@user = current_user
	end
	def create
		@post_thread = PostThread.new(post_thread_params)
		@post_thread.user_id = current_user.id
		@post_thread.save
		redirect_to post_threads_path
	end
	def show
		@post_thread = PostThread.find(params[:id])
		@post_comment =PostComment.new
		@search = PostThread.ransack(params[:q])
	  	@post_threads = @search.result(distinct: true)
	end

	private
	def post_thread_params
		params.require(:post_thread).permit(:title, :comment, :image)
	end
end
