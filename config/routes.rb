Rails.application.routes.draw do
  namespace :admin do
    resources :artists
  end

  resources :artists, only: [:index, :show]
  resources :locations, only: [:index, :show]
  resources :media, only: [:index, :show]


  get '/home', to: 'home#index'
  get '/documentation', to: 'documentation#index'

  root to: "home#index"

  get '/home/:id', to: 'home#show', as: "artist_show"

  #static routes
  get '/documentation/artists/get_a_specific_artist', to: 'documentation#get_a_specific_artist'
  get '/documentation/artists/listing_artists', to: 'documentation#listing_artists'
  get '/documentation/locations/get_a_specific_location', to: 'documentation#get_a_specific_location'
  get '/documentation/locations/listing_locations', to: 'documentation#listing_locations'
  get '/documentation/media/get_a_specific_medium', to: 'documentation#get_a_specific_medium'
  get '/documentation/media/listing_media', to: 'documentation#listing_media'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
