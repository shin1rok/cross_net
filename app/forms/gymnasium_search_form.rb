class GymnasiumSearchForm
  extend ActiveModel::Naming

  attr_accessor :prefecture_id

  def initialize(params)
    return if params.nil?
    @prefecture_id = params[:prefecture_id]
  end

  def search
    Gymnasium.all
             .includes(:prefecture)
             .prefecture_id_is(prefecture_id)
  end
end
