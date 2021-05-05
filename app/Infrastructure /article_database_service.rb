class ArticleDatabaseService
    def create(params)
        user_id = User.find(params[:should_chg_cookie_user_id]).id
        ##to do cookieから取得に変更。要オリジンポリシー解決
        params.delete(:should_chg_cookie_user_id)

        article = TechnicalArticle.new(params.merge(user_id: user_id))
        
        if !article.valid?
            return  { status: 'ERROR', messege: article.errors.full_messages }
        end

        if article.save
            { status: 'SUCCESS', data: article }
        else
            { status: 'ERROR', data: article.errors }
        end
    end
end