Rails.application.routes.draw do
  devise_for :admins
  root to: "gallery#index"
  resources :products
end
