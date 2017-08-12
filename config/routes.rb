Rails.application.routes.draw do
  root 'restaurants#index'
  resources :restaurants, except: :destory
end
