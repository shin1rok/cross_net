module ApplicationHelper
  def display_prefecture(id)
    Prefecture.find(id).name
  end
end
