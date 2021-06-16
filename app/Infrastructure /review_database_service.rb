class ReviewDatabaseService
    def create(params)
        user_id = User.find(params[:should_chg_cookie_user_id]).id
        params.delete(:should_chg_cookie_user_id)
        review = Review.new(params.merge(user_id: user_id))

        if !review.valid?
            return  { status: 'ERROR', messege: review.errors.full_messages }
        end

        if review.save
            { status: 'SUCCESS', data: review }
        else
            { status: 'ERROR', data: review.errors }
        end
    end
end