class CreateReviewAppService
    def initialize
        @repository = ReviewDatabaseService.new()
    end

    def execute(params)
        result = @repository.create(params)
        result
    end
end