class Tag < ApplicationRecord
  has_many :taggings
  has_many :notes, through: :taggings
  validates :name, presence: true

  default_scope {order(name: :desc)}

  #
  # def as_json (arg = nil){
  #   "name"  => name,
  #   "notes" => notes.colelct {|n| n.as_json}
  #   }
  # end
end
