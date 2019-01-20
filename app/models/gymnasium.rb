class Gymnasium < ApplicationRecord
  has_many :programs, dependent: :destroy
  belongs_to :prefecture

  scope :prefecture_id_is, ->(prefecture_id) { where(prefecture_id: prefecture_id) if prefecture_id.present? }
end
