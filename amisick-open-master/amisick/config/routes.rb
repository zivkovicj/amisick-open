Rails.application.routes.draw do
  resources :t_webhooks
  resources :m_webhooks
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # define root
  root to: "home#index"

  # Misc
  get 'home/index'

  # Marketing webhooks
  post "/marketing_webhooks" => "m_webhooks#sib_webhook"
  get "/marketing_webhooks" => "m_webhooks#index"
  # Transac webhooks
  post "/transac_webhooks" => "t_webhooks#sib_webhook"

  # Senders Index
  get "/senders" => "sender#index"
  # End of Ruby Class
end
