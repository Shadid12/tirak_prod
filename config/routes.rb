Rails.application.routes.draw do
  resources :listings
  resources :applicantprofiles
  resources :applications, only: [:create, :show] 
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: "pages#home"
  get '/notifications', to: 'pages#notifications'
  post '/approve_app', to: 'applications#approve_app'
  get '/show_approval', to: 'applications#show_approval'
end
