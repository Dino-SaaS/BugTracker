Rails.application.routes.draw do
  root to: 'bugs#index'

  devise_for :users, controllers: {
    'registrations': 'registrations',
    'sessions':      'sessions',
    'passwords':     'passwords'
  }

  resources :bugs

  get 'pages/dashboard'
  get 'pages/icons'
  get 'pages/profile'
  get 'pages/tables'
  get 'pages/login'
  get 'pages/register'
  get 'pages/upgrade'
end
