MatrackApp.router.draw do
  root "pages#index"
  get "show", to: "pages#show"
  get "pages/home", to: "pages#show"
  post "pages/home", to: "pages#show"
  post "/", to: "pages#index"
end