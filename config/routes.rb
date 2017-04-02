Rails.application.routes.draw do
  devise_for :users
  resources :movies do
    member do
      post :love
      post :quit
    end

    resources :reviews
  end
  
  root 'movies#index'
end
