class Api::ProductsController < ApplicationController
  def first_product
    @product = Product.first
    render 'first_product.json.jbuilder'
  end

  def all_products
    @products = Product.all
    render all_products.json.jbuilder    
  end

  def string_product
    product_id = params[:id]
    @product = Product.find(product_id)
    render 'string_product.json.jbuilder'    
  end

    def segment_product
    product_id = params[:id]
    @product = Product.find(product_id)
    render 'segment_product.json.jbuilder'    
  end
end
