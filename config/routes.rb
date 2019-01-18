Rails.application.routes.draw do
  namespace :api do
    get '/first_product' => 'products#first_product'
    get '/all_proudcts' => 'products#all_products'
    get '/product_by_string_params' => 'products#string_product'
    get '/product_by_segment_params/:id' => 'products#segment_product'
  end  
end
