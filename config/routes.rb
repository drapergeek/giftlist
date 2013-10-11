Giftlist::Application.routes.draw do
  resource :welcome, only: [:show]
  root to: 'welcomes#show'
end
