class Note < ApplicationRecord
  belongs_to :user, optional: true
  has_many :tags, through: :taggings
  has_many :taggings
  validates :body, presence: true
  validates :title, presence: true

  # def initialize(title:, body:)
  #   self.title = title
  #   self.body = body
  # end  He moved this somewhere else.  But where? Why?

  
  # def tags=(string)
  #   if string.is_a? String
  #     string.split(",").map(&:strip).each do |t|
  #       tags << tag.find_or_initialize_by(name: t)
  #     end
  #   else
  #     super(string)
  #   end
  # end

end
