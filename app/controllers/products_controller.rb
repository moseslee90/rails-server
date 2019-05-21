class ProductsController < ApplicationController
    def index
        @query = params['query']
        render :json => {
            "products"=> Product.where('name ILIKE ?', "%#{@query}%" )
        }
    end
    private
        def product_params
            params.require(:product).permit(:name, :price, :description)
        end
end