Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :kindles, only: [:new, :create, :edit, :update]
  resources :highlights, only: [:index, :edit, :update, :destroy] do
    resources :images, only: [:create, :show]
    collection do
      # get 'flashcards:id', to: 'highlights#flashcards', as: :flashcards
      get :flashcards
      get :favorites
      get :tags
      put :tags
      get :all_tags
    end
    member do
      get :fav
      put :fav
      get :unfav
      put :unfav
      get :export
      get :destroy_file
      get :share
    end
  end
  resources :sources, only: [:show] do
    member do
      get :export_book
      get :destroy_file
      get :export_all
    end
    collection do
      get :books
      get :articles
      get :library
      get :export_many
    end
  end
end
