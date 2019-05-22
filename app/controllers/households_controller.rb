class HouseholdsController < ApplicationController
    def index
        @query = params['query']
        if @query == ''
            render :json => {
                "products"=> Household.all
            }
        else
            render :json => {
                "products"=> Household.where('name ILIKE ?', "%#{@query}%" )
            }
        end
    end
    def create
        @household = Household.new(household_params)
        if @household.save
            render :json => {
                "household"=> @household
            }
        end
        # @post = params
    end
    def show
        @household = Household.find(params[:id])
        render :json => {
            "data"=> {"household" => @household, "parents" => @household.parents}
        }
    end
    private
        def household_params
            params.require(:household).permit(:name, parents_attributes: %i[name parent_type _destroy])
        end
end