Rails.application.routes.draw do
  resources :books, only: [:show, :index] do
    collection do
      get '/alpha', to: 'books#alpha'
    end
    member do
      get '/author', to: 'books#author'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
