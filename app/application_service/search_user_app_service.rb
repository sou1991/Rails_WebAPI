class SearchUserAppService
    def initialize
        @user_repository = UserDatabaseService.new()
    end

    def execute(params)
        res_result = @user_repository.find(params)
        res_result
    end
end