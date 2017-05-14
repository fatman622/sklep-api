module Api
  module V1
    class ProfilesController < ApplicationController
      include ProfilesDoc

      def index
        @profiles = Profile.all
        render json: @profiles, status: :ok
      end

      def show
        render json: profile, status: :ok
      end

      def create
        @profile = Profile.create(profile_params)
        if @profile.save
          render json: @profile, status: :created
        else
          render json: { errors: @profile.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def update
        @profile = profile.update(profile_params)
        if @profile
          render json: @profile, status: :created
        else
          render json: { errors: @profile.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def destroy
        render json: profile.destroy, status: :no_content
      end

      private
      def profile
        Profile.find(params[:id])
      end

      def profile_params
        params.permit(:name, :age, :telephone)
      end
    end
  end
end