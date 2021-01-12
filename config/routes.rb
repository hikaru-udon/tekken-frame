Rails.application.routes.draw do
  root "characters#index"
  resources :moves, only: [:index, :show]
end
