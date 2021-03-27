module Api
    module V1
        class UsersController < ApplicationController
            def initialize
                @create_user = CreateUserAppService.new()
                super
            end

            def create
                responce = @create_user.execute(req_post_params)
                render json: responce
            end

            def req_post_params
                params.require(:user).permit(:name, :age, :address, :sex)
            end
        end
    end
end