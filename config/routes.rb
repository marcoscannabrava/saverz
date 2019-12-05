Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      # root to: "user/dashboards#show"
    end
  end
  root to: 'pages#home'
  get '/test', to: 'companies#show'

  get 'dashboard', to: "user/dashboards#show"

  # Abstract controller
  resources :field_choices, only: [ :new, :create ]

  resources :companies, only: :show do
    # GET companies/:company_id/coupons
    resources :coupons, only: [ :index ]
  end

  resources :used_coupons, only: [ :index ]
end
