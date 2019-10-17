
# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :followers, :following_users

  has_many :tweets
end
