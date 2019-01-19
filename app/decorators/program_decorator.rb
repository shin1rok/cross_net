module ProgramDecorator
  def display_program
    "#{t('date.day_names')[day]}:#{l(start_time, format: :only_time)}〜 #{l(end_time, format: :only_time)}"
  end
end
