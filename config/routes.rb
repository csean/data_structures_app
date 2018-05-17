Rails.application.routes.draw do
  devise_for :users

  resources :home, only: :index

  authenticate :user do
    resources :data_structures
  end

  root to: "home#index"
end
