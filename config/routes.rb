Rails.application.routes.draw do
  get 'locations/index'
  get 'locations/show'
  get 'media/index'
  get 'media/show'
 resources :artists, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
