Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'login', to: 'access_tokens#create'
      delete 'logout', to: 'access_tokens#destroy'
      post 'sign_up', to: 'registrations#create'

      resources :questions do
        resources :answers, only: [:index, :create]
      end
    end
  end
end
