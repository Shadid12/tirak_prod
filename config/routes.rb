Rails.application.routes.draw do
  resources :listings
  resources :applicantprofiles
  resources :applications, only: [:create, :show] 
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: "pages#home"
end
