module ApplicationHelper
  def selected_prefecture(prefecture)
    prefecture || DEFAULTS::PREFECTURE
  end
end
