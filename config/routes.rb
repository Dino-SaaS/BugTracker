Rails.application.routes.draw do
  root to: 'bugs#index'

  devise_for :users, controllers: {
    'registrations': 'registrations',
    'sessions':      'sessions',
    'passwords':     'passwords'
  }

  resources :bugs
end
