class Gymnasium < ApplicationRecord
  has_many :programs, dependent: :destroy
  belongs_to :prefecture
end
