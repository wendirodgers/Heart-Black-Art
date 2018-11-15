Rails.application.routes.draw do
  namespace :admin do
    resources :artists
  end

  resources :artists, only: [:index, :show]
  resources :locations, only: [:index, :show]
  resources :media, only: [:index, :show]


  get '/home', to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
