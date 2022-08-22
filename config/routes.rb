Rails.application.routes.draw do
  devise_for :users

root to: "contents#index"
  get 'contents/download/:id',to: "contents#download",as: "download_file"
  resources :contents do
    resources :comments, only: [:create, :destroy]
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
