Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "post_threads#top"
  resources :post_threads, only: [:index, :new, :create, :show] do
  	resources :post_comments, only: [:create]
  end
end
