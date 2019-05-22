class ProductsController < ApplicationController
    def index
        @query = params['query']
        if @query == ''
            render :json => {
                "products"=> Product.all
            }
        else
            render :json => {
                "products"=> Product.where('name ILIKE ?', "%#{@query}%" )
            }
        end
    end
    def create
        @product = Product.new(product_params)
        if @product.save
            render :json => {
                "product_id"=> @product.id
            }
        end
        # @post = params
    end
    private
        def product_params
            params.require(:product).permit(:name, :price, :description)
        end
end