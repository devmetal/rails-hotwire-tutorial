Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  devise_for :api_users, path: 'api', path_names: {
                                        sign_in: 'login',
                                        sign_out: 'logout',
                                        registration: 'signup'
                                      },
                         controllers: {
                           sessions: 'api_users/sessions',
                           registrations: 'api_users/registrations'
                         }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  namespace :api, defaults: { format: :json } do
    jsonapi_resources :quotes
  end

  resources :quotes do
    resources :line_item_dates, except: %i[index show] do
      resources :line_items, except: %i[index show]
    end
  end
end
