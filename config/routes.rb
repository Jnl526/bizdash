Rails.application.routes.draw do
  
  devise_for :users, :controllers => { registrations: 'registrations' }

  root "dashboard#index"
  resources :schedules
  resources :users
  resources :clients
  resources :invoices
  resources :projects do
  member do
    patch :complete
  end
  end
  resources :items do
    member do
      patch :complete
    end
  end
  

end
