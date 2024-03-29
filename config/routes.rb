Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do  
      resources :questions, only: [:index, :create, :destroy]

      post 'authenticate', to: 'authentication#create'
      get 'images', to: 'images#upload'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
