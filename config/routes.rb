Rails.application.routes.draw do

#Nested resources
  root "artists#index"

    resources :artists, only: [:index, :show, :destroy] do
    resources :songs, only: [:new, :destroy, :create]
  end
end
