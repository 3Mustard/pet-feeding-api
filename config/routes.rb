Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :pets do
        resources :notes
      end
    end
  end
end
