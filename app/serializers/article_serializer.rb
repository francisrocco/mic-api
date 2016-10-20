class ArticleSerializer < ActiveModel::Serializer
  attributes :title, :content, :published, :bootcamp, :author_id, :word_count
end
