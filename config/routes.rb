Rails.application.routes.draw do
  resources :gardens, except: [:edit, :update] do
    resources :plants, only: [:new, :create]
  end
  resources :plants, only: [ :destroy ]
end
