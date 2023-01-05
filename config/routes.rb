Rails.application.routes.draw do
  get 'answers/create'
  get 'answers/update'
  get 'answers/destroy'
  get 'questions/new'
  get 'questions/create'
  get 'questions/edit'
  get 'questions/update'
  get 'questions/index'
  get 'questions/show'
  get 'questions/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
