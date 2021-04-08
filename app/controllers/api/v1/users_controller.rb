module Api
    module V1
        class UsersController < ApplicationController
            attr_reader :create_user, :search_user

            def initialize
                @create_user = CreateUserAppService.new()
                @search_user = SearchUserAppService.new()
                super
            end

            def login
                responce = @search_user.execute(params[:id])
                if !responce.nil?
                    session[:nickname] = responce[:data][:name]
                    require 'byebug'; byebug
                    { status: 'SUCCESS' }
                else
                    { status: 'ERROR' }
                end
            end

            def create
                responce = @create_user.execute(req_post_params)
                render json: responce
            end

            def index
            def show
                responce = @search_user.execute(params[:id])
                render json: responce
            end

            def req_post_params
                params.require(:user).permit(:name, :age, :address, :sex)
            end
        end
    end
end