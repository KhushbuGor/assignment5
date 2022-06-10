Rails.application.routes.draw do
  resources :authors
  resources :books
  
  resources :authors do
    member do
      get 'add_book'
    end
  end
  root "authors#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
end
