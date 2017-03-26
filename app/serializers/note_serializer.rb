class NoteSerializer < ActiveModel::Serializer
  attributes :title, :body, :created_at, :updated_at, :id
  has_many :tags #says there are a bunch of these.  Make it an array.
  belongs_to :user # has_one :user There's only one of these
end
