# frozen_string_literal: true

module Api
  module V1
    class TweetsController < ApiController
      respond_to :json

      before_action :set_user

      def index
        render json: @user.tweets
      end

      def create
        render json: @user.tweets.create(tweet_params)
      end

      private

      def set_user
        @user = User.find(params[:user_id])
      end

      def tweet_params
        params.permit(:content)
      end
    end
  end
end
