class ApplicationController < ActionController::Base
	before_action	:search
	  def after_sign_in_path_for(resource)
	    post_threads_path # ログイン後に遷移するpathを設定
	  end

	  def after_sign_up_path_for(resource)
	  	post_threads_path # サインアップ後に遷移するpathを設定
	  end

	  def after_sign_out_path_for(resource)
	    root_path # ログアウト後に遷移するpathを設定
	  end

	  def search
	  	@search = PostThread.ransack(params[:q])
	  	@post_threads = @search.result(distinct: true)
	  end
end
