module TwitterSearchHelper
  def distance_of_time_in_words_or_absolute(date)
    return date.strftime('%b %d, %Y %I:%M%p') if date < 2.days.ago

    diff_format = ''
    time_diff = (Time.new - date) / 3600
    if time_diff < 1
      min = (time_diff * 60).round
      diff_format = min > 1 ? "#{min} minutes" : 'a minute'
    else
      diff_format = time_diff > 1 ? "#{time_diff.round} hours" : 'an hour'
    end

    "about #{diff_format} ago"
  end
end
