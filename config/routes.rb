Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations',
    unlocks: 'users/unlocks',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }, paths: {
    sign_in: 'login',
    sign_out: 'logout',
    password: 'secret',
    confirmation: 'verification',
    unlock: 'unblock',
    sign_up: 'register',
    sign_out: 'logout',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  
  devise_scope :user do
    get 'login', to: 'users/sessions#new', as: :login
    get 'register', to: 'users/registrations#new', as: :register
    get 'secret', to: 'users/passwords#new', as: :secret
    get 'verification', to: 'users/confirmations#new', as: :verification
    get 'unblock', to: 'users/unlocks#new', as: :unblock
    get 'omniauth_callbacks', to: 'users/omniauth_callbacks#new', as: :omniauth_callbacks
  end
end
