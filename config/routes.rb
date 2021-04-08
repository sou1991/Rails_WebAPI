Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resource :users
      post "users/login" => "users#login"
    end
  end
end
