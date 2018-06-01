Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  root "dashboard#index"
  resources :meetings
  resources :users
  resources :clients
  resources :invoices
  resources :projects
  resources :tasks
  resources :events
end
