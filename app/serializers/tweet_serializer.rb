
# frozen_string_literal: true

class TweetSerializer < ActiveModel::Serializer
  attributes :id, :content, :created_at, :user_profile

  def user_profile
    Rails.application.routes.url_helpers.api_v1_user_url(id: object.user.id)
  end
end
