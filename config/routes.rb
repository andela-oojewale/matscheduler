MatrackApp.router.draw do
  get "/users", to: "sessions#index"
  post "users/register", to: "sessions#register"
  post "users/login", to: "sessions#login"
  root "todolists#index"
  get "/todolist", to: "todolists#show"
  get "/todolist/new", to: "todolists#new"
  post "/todolist", to: "todolists#create"
  put "/todolist", to: "todolists#update"
  delete "/todolist", to: "todolists#destroy"
end
