Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :highlights do
    collection do
      get :flashcards
      get :favorites
    end
  end
  resources :users, only: [:show]
end
