Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/pets" => "pets#index"
  post "/pets" => "pets#create"
  patch "/pets/:id" => "pets#update"
  delete "/pets/:id" => "pets#destroy"
end
