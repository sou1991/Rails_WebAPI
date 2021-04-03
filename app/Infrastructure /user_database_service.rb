class UserDatabaseService

    def create(params)
        user = User.new(params)

        if !user.valid?
            return  { status: 'ERROR', messege: user.errors.full_messages }
        end

        if user.save
             { status: 'SUCCESS', data: user }
        else
             { status: 'ERROR', data: user.errors }
        end
    end

    def find(param_id)
        user = User.find(param_id)

        if !user.nil?
            { status: 'SUCCESS', data: user }
        else
            { status: 'ERROR', data: user.errors }
        end
    end

end