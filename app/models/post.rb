class Post < ApplicationRecord
  validates_presence_of :titulo
  has_many :comentarios, dependent: :destroy
end
