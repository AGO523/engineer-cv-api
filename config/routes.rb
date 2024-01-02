Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get 'hello', to: 'hello#index'

  root "rails/welcome#index"
end
