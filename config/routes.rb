Rails.application.routes.draw do
  get 'supported_choices/new'
  get 'supported_choices/create'
  get 'researchers/show'
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
  resources :supported_choices, only: [ :new, :create ]

  # Show coupons from a company
  resources :companies, only: :show

  # PENDING
  resources :used_coupons, only: [ :index ]

  resources :researchers, only: [ :show ]

  namespace :api, defaults: { format: :json } do
  namespace :v1 do
    resources :coupons, only: [ :index ]
    resources :companies, only: [ :index ]
  end
end

end
