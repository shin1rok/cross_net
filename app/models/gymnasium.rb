class Gymnasium < ApplicationRecord
  has_many :programs
  belongs_to :prefecture
end
