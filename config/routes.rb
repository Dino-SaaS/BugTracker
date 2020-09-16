Rails.application.routes.draw do
  root to: 'pages#dashboard'

  devise_for :users, controllers: {
    'registrations': 'registrations',
    'sessions':      'sessions'
  }

  get 'pages/dashboard'
  get 'pages/icons'
  get 'pages/profile'
  get 'pages/tables'
  get 'pages/login'
  get 'pages/register'
  get 'pages/upgrade'
end
