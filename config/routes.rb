Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'thankyou/email', to: 'pages#thanksemail'
  get 'thankyou/order', to: 'pages#thanksorder'
  resources :contacts, only: [:new, :create]
end
