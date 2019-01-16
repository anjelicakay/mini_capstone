Rails.application.routes.draw do
  namespace :api do
    get '/first_product' => 'products#first_product'
    get '/all_proudcts' => 'products#all_products'
  end  
end
