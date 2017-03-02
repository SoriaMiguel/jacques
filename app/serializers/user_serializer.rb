class UserSerializer < ActiveModel::Serializer
  attributes :username, :email, :api_token
  has_many :notes
end
