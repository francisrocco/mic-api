class Article < ApplicationRecord
  belongs_to :author

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "http://i65.tinypic.com/20fdno9.png"

  def word_count
    self.content.split(" ").length
  end

end
