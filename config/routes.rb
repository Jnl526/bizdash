Rails.application.routes.draw do
  resources :task_lists
  devise_for :users, :controllers => { registrations: 'registrations' }

  root "dashboard#index"
  resources :schedules
  resources :users
  resources :clients
  resources :invoices
  resources :projects
  resources :task_lists do 
    resources :task_items do
      member do
        patch :complete
      end
    end
  end

end
