class SearchTecnicalArticleAppService
    def initialize
        @article_repository = ArticleDatabaseService.new()
    end

    def execute()
        res_result = @article_repository.find_all()
        res_result
    end
end