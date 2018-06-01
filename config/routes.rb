Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get'/farmers' => 'pages#farmers'
  get'/chickens_breeds' => 'pages#chickens_breeds'
  get'/profile' => 'pages#profile'
  #get "project/new_release" => 'project#new_release', :as => :new_release
  resources :chickens_gangs do
    resources :rentings, only: [:show, :new, :create]
    resources :reviews, only: [:new, :create]

    #atarina
    collection do
      get :my_chicken_gangs
    end

    # Diogo
    collection do
      get :my_bookings
    end
  end
end
