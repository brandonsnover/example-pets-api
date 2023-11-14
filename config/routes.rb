Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  post "/pets" => "pets#create"
  patch "/pets/:id" => "pets#update"
end
