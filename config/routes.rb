Rails.application.routes.draw do
  resources :t_webhooks
  resources :m_webhooks
  get 'home/index'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # define root
  root to: "home#index"

  # Marketing webhooks
  post "/marketing_webhooks" => "m_webhooks#sib_webhook"
  get "/marketing_webhooks" => "m_webhooks#index"
  # Transac webhooks
  post "/transac_webhooks" => "t_webhooks#sib_webhook"
  get "/transac_webhooks" => "t_webhooks#index", :as => :t_webhooks_path
end
