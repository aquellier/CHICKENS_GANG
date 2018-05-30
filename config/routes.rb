Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :chickens_gangs do
    resources :rentings, only: [:show, :new, :create]
  end
end
