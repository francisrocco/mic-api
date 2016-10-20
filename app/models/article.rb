class Article < ApplicationRecord
  belongs_to :author

  def word_count
    self.content.split(" ").length
  end

end
