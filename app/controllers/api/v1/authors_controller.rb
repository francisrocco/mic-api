module Api
  module V1
    class AuthorsController < ApplicationController

      def index
        render json: Author.all
      end

      def show
        render json: User.find(params[:id])
      end

      private

      def author_params
        params.require(:author).permit(:name)
      end

    end
  end
end
