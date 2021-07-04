Rails.application.routes.draw do
  root "characters#index"
  resources :characters do
    resources :moves, only: [:index, :show] do
    collection do
      get 'search'
    end
    end
  end
end
