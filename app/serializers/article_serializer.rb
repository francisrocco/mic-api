class ArticleSerializer < ActiveModel::Serializer
  attributes :title, :content, :published, :bootcamp, :avatar, :author_id, :word_count, :author, :submitted
end
