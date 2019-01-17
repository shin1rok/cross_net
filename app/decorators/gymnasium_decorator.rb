module GymnasiumDecorator
  def selected_prefecture
    prefecture_id || DEFAULTS::PREFECTURE
  end
end
