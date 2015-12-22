MatrackApp.router.draw do
  root "sessions#index"
  get "show", to: "sessions#index"
  get "pages/home", to: "sessions#index"
  post "users/register", to: "sessions#register"
  post "users/login", to: "sessions#login"
end