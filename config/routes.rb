Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get'/farmers' => 'pages#farmers'
  get'/profile' => 'pages#profile'
  resources :chickens_gangs do
    resources :rentings, only: [:show, :new, :create]
    resources :reviews, only: [:new, :create]
  end
end
