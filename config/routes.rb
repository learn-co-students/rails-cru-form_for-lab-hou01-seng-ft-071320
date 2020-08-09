Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists, only: [:show, :index, :create, :new, :edit, :update]
  resources :genres, only: [:show, :index, :create, :new, :edit, :update]
  resources :songs, only: [:show, :index, :create, :new, :edit, :update]

end
