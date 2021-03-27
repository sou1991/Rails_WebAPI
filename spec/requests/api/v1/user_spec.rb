require 'rails_helper'

describe 'UserAPI' do
 it '新しいuserを作成する' do
    valid_params = { name: 'dummy', age: 99 , address: 'kobe', sex: 1}

    #データが作成されている事を確認
    expect { post '/api/v1/users', params: { user: valid_params } }.to change(User, :count).by(+1)

    # リクエスト成功を表す200が返ってきたか確認する。
    expect(response.status).to eq(200)
  end
end