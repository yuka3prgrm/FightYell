Rails.application.routes.draw do
  devise_for :users
  root to: "fights#index"

  resources :fights, only: [:index, :new, :create]
end
