Rails.application.routes.draw do
  root 'pictures#index'

  # users
  resources :users , only: [:new,:create,:show]

  # sessions
  resources :sessions, only: [:new,:create,:destroy]

  # pictures
  resources :pictures do
    collection do
      post 'confirm'
    end
  end
end
