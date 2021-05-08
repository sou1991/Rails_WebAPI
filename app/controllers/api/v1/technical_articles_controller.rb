module Api
    module V1
        class TechnicalArticlesController < ApplicationController
            attr_reader :create_article, :search_article

            def initialize
                @create_article = CreateTecnicalArticleAppService.new() 
                @search_article = SearchTecnicalArticleAppService.new()
                super
            end

            def create 
                responce = @create_article.execute(req_post_params)
                render json: responce
            end

            def show
                responce = @search_article.execute()
                render json: responce
            end

            def req_post_params
                params.require(:article).permit(:title, :body, :should_chg_cookie_user_id)
            end
        end
    end
end

