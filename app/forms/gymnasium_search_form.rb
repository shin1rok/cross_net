class GymnasiumSearchForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :prefecture_id, :integer

  def search
    Gymnasium.all
        .includes(:prefecture)
        .prefecture_id_is(prefecture_id)
  end
end
