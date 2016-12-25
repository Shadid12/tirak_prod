Rails.application.routes.draw do
  resources :listings
  resources :applicantprofiles
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: "pages#home"
end
