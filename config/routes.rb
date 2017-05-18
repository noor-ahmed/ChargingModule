Rails.application.routes.draw do
  resources :accumulators
  resources :communities
  resources :offers
  resources :fn_fs
  resources :user_fnf_lists
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
