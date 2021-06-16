module Api
    module V1
        class ReviewsController < ApplicationController
            def initialize
                @create_review = CreateReviewAppService.new()
                super
            end

            def create
                responce = @create_review.execute(req_post_params);
                render json: responce
            end

            def req_post_params
                params.require(:review).permit(:body, :should_chg_cookie_user_id, :technical_article_id)
            end
        end
    end
end
