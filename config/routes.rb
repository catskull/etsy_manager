Rails.application.routes.draw do
  mount_griddler

  resources :orders

  root 'orders#index'
end
