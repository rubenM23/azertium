Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api, defaults: { format: :json } do
    get 'releases', to: 'people#index'
    get 'factorial', to: 'people#factorial'
    get 'array', to: 'people#split_array'
  end
end
