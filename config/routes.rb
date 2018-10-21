Rails.application.routes.draw do
  resources :forms, only: [ :index, :show, :new, :create ]
  devise_for :users
  root to: 'pages#home'

end

