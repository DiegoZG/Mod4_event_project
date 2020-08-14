Rails.application.routes.draw do
  get 'user/index'
  get 'user/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root to: "static_pages#root"
  #root 'events#index'

  namespace :api do
    namespace :v1 do
      resources :events
      resources :users
      resources :session
      resources :events
      resources :categories
      resources :bookmarks
      resources :tickets
    end
  end

end
