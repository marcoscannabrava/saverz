Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      # root to: "user/dashboards#show"
    end
  end
  root to: 'pages#home'

  get 'dashboard', to: "user/dashboards#show"

  get '/test', to: 'coupons#index'

  # Abstract controller
  resources :field_choices, only: [ :new, :create ]

  # Show coupons from a company
  resources :companies, only: :show

  # PENDING
  resources :used_coupons, only: [ :index ]
end
