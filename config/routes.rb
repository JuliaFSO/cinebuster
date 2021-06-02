Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :showtimes, except: %i[edit update destroy] do
    resources :tickets, only: %i[show new create]
  end
  resources :tickets, only: %i[index]
end
