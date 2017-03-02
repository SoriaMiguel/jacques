class UserSerializer < ActiveModel::Serializer
  attributes :username, :email
  has_many :notes
end
