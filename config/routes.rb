Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get 'hello', to: 'hello#index' # TODO: remove later

  root "rails/welcome#index" # TODO: remove later
end
