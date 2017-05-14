module Api
  module V1
    class WareSalesController < ApplicationController
      include WareSalesDoc
       def index
        @ware_sales = WareSale.all
        render json: @ware_sales, status: :ok
      end

      def create
        @ware_sale = WareSale.create(ware_sale_params)
        if @ware_sale.save
          render json: @ware_sale, status: :created
        else
          render json: { errors: @ware_sale.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def destroy
        render json: ware_sale.destroy, status: :no_content
      end

      private
      def ware_sale
        WareSale.find(params[:id])
      end

      def ware_sale_params
        params.permit(:profile_id, :ware_id, :amount)
      end
    end
  end
end