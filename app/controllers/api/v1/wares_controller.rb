module Api
  module V1
    class WaresController < ApplicationController
      include WaresDoc

      def index
        @wares = Ware.all
        render json: @wares, status: :ok
      end

      def show
        render json: ware, status: :ok
      end

      def create
        @ware = Ware.create(ware_params)
        if @ware.save
          render json: @ware, status: :created
        else
          render json: { errors: @ware.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def update
        @ware = ware.update(ware_params)
        if @ware
          render json: @ware, status: :created
        else
          render json: { errors: @ware.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def destroy
        render json: ware.destroy, status: :no_content
      end

      private
      def ware
        Ware.find(params[:id])
      end

      def ware_params
        params.permit(:name, :country, :price)
      end
    end
  end
end