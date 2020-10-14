Rails.application.routes.draw do
  root to: 'bugs#index'
  get 'accounts/new'
  get 'accounts/create'

  devise_scope :user do
    get '/users/sign_up' => 'accounts#new', as: 'new_user_registration'
  end

  devise_for :users, controllers: {
    'sessions':      'sessions',
    'passwords':     'passwords'
  }

  resources :bugs, :accounts
end
