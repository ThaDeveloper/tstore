Rails.application.routes.draw do
  resources :sales
  resources :product_catalogs
  root to: "sales#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
