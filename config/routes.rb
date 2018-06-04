Rails.application.routes.draw do
  resources :task_lists
  devise_for :users, :controllers => { registrations: 'registrations' }

  root "dashboard#index"
  resources :meetings
  resources :users
  resources :clients
  resources :invoices
  resources :projects
  resources :task_lists do 
    resources :task_items
  end
end
