class CreateUserAppService
    def initialize
        @user_repository = UserDatabaseService.new()
    end

    def execute(params)
        res_result = @user_repository.create(params)
        res_result
    end

end
