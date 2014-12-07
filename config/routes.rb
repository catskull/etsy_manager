Rails.application.routes.draw do
  mount_griddler

  resources :orders

  root 'orders#index'

  # get "/email_processor", to: proc { [200, {}, ["OK"]] }, as: "mandrill_head_test_request"

end
