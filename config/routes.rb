Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :showtimes, except: %i[edit update destroy] do
    resources :tickets, only: %i[index show new create]
  end

end
