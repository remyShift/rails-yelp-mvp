Rails.application.routes.draw do
  root "restaurants#index"
  resources :restaurants do
    resources :reviews, only: [:create, :new]
  end
end
