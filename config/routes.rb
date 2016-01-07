MatrackApp.router.draw do
  root "sessions#index"
  get "tasks", to: "todolists#index"
  post "user/create", to: "sessions#create"
  post "user/login", to: "sessions#login"
  get "user/logout", to: "sessions#logout"
  get "/todolist", to: "todolists#show"
  get "/todolist/new", to: "todolists#new"
  post "/todolist", to: "todolists#create"
  put "/todolist", to: "todolists#update"
  delete "/todolist", to: "todolists#destroy"
end
