Rails.application.routes.draw do
  root "characters#index"
  resources :characters do
    resources :moves
  end
end
