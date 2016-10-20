module Api
  module V1
    class ArticlesController < ApplicationController

      def index
        render json: Article.all.order('created_at DESC')
      end


      def create
        article = Article.new(article_params)
        if article.save
          render json: article
        else
          render json: book.errors, status: 500
        end
      end

      def destroy
        Article.find(params[:id]).destroy
      end

      private

      def article_params
        params.require(:article).permit(:title, :content, :bootcamp, :author_id)
      end

    end
  end
end
