# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApiController

      respond_to :json

      before_action :set_user
      before_action :set_user_destination, only: %i[follow unfollow]

      def show
        render json: @user
      end

      def followers
        render json: @user.followers
      end

      def follow
        if @user.following?(@user_destination)
          render json: { message: 'Already following' }, status: :unprocessable_entity
        else
          @user.follow(@user_destination)
          render json: { message: 'Success!' }
        end
      end

      def unfollow
        if @user.following?(@user_destination)
          @user.stop_following(@user_destination)
          render json: { message: 'Success!' }
        else
          render json: { message: 'Not following' }, status: :unprocessable_entity
        end
      end

      private

      def set_user
        @user = User.find(params[:id])
      end

      def set_user_destination
        @user_destination = User.find(params[:id_dest])
      end
    end
  end
end
