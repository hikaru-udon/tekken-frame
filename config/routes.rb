Rails.application.routes.draw do
  root "characters#index"
  resources :characters do
    resources :moves, only: [:index, :search]
    collection do
      get 'search'
    end
  end
end
