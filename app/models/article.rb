class Article < ApplicationRecord
  belongs_to :author, optional: true

  after_initialize do |article|
    article.author ||= Author.find(11)
  end

  def word_count
    self.content.split(" ").length
  end

  def is_now?
    seconds = Time.now - self.created_at
    seconds < 60
  end

  def is_within_the_hour?
    seconds = Time.now - self.created_at
    seconds < 3600
  end

  def is_within_the_day?
    seconds = Time.now - self.created_at
    seconds < 86400
  end

  def submitted
    if is_now?
      "Just now"
    elsif is_within_the_hour?
      minutes = ((Time.now - self.created_at) / 60).to_i
      (minutes == 1) ? "1 minute ago" : "#{minutes} minutes ago"
    elsif is_within_the_day?
      hours = ((Time.now - self.created_at) / 3600).to_i
      (hours == 1) ? "1 hour ago" : "#{hours} hours ago"
    else
      days = ((Time.now - self.created_at) / 86400).to_i
      (days == 1) ? "1 day ago" : "#{days} days ago"
    end
  end

end
