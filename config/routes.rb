Rails.application.routes.draw do
  get 'accounts/new'
  get 'accounts/create'
  root to: 'bugs#index'

  devise_for :users, controllers: {
    'registrations': 'registrations',
    'sessions':      'sessions',
    'passwords':     'passwords'
  }

  resources :bugs, :accounts
end
