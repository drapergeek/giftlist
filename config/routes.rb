Giftlist::Application.routes.draw do
  resources :gifts

  resource :welcome, only: [:show]
  root to: 'welcomes#show'
end
