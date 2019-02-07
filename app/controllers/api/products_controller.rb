class Api::ProductsController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all

    category_name = params[:category]
    if category_name
      category = Category.find_by(name: category_name)
      @products = category.products
    end    

    search_terms = params[:search]
    if search_terms
      @products = @products.where("name iLIKE ?", "%#{search_terms}%")
    end  

    discount = params[:discount]
    if discount
      @products = @products.where("price < ?", 2)
    end

    sort_attribute = params[:sort]
    sort_order = params[:sort_order]

    if sort_attribute && sort_order
      @products = @products.order(sort_attribute => sort_order)  
    elsif sort_attribute
      @products = @products.order(sort_attribute)    
    else
      @products = @products.order(:id)
    end  
    

    render 'index.json.jbuilder'
  end

  def create
    @product = Product.new(
                            name: params[:name],
                            price: params[:price],
                            description: params[:description],
                            supplier_id: params[:supplier_id]
                          )

    if @product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end    
  end

  def show
    @product = Product.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.in_stock = params[:in_stock] || @product.in_stock
    @supplier_id = params[:supplier_id] || @product.supplier_id

    if @product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end    
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "Successfully removed product."}
  end


end
