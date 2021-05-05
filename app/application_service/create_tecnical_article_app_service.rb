class CreateTecnicalArticleAppService
    def initialize
        @article_repository = ArticleDatabaseService.new()
    end

    def execute(params)
        res_result = @article_repository.create(params)
        res_result
    end
end