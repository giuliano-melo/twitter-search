module TwitterSearchHelper
  def distance_of_time_in_words_or_absolute(date)
    return date.strftime('%b %d, %Y %I:%M%p') if date < 2.days.ago

    diff_format = ''
    time_diff = (Time.new - date)
    if time_diff < 3600
      min = (time_diff / 60).round
      diff_format = min > 1 ? "#{min} minutes" : 'a minute'
    else
      hour = (time_diff / 3600).round
      diff_format = hour > 1 ? "#{hour} hours" : 'an hour'
    end

    "about #{diff_format} ago"
  end
end
