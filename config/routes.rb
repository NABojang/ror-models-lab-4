Rails.application.routes.draw do

  root "food#index"
  # get 'food/chef', to: "food#chef"
  # get 'food/dish', to: "food#dish"
  # get "/food/:name", to: "food#edit"
  # get '/', to: "food#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'food/list'
  get 'food/new'
  post 'food/create'
  get 'food/show'
  get 'food/edit'
  get 'food/delete'
  get 'food/update'


end
