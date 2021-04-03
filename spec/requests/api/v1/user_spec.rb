require 'rails_helper'

describe 'UserAPI' do
 it '新しいuserを作成する' do
    valid_params = { name: 'dummy', age: 99 , address: 'kobe', sex: 1}

    #データが作成されている事を確認
    expect { post '/api/v1/users', params: { user: valid_params } }.to change(User, :count).by(+1)

    # リクエスト成功を表す200が返ってきたか確認する。
    expect(response.status).to eq(200)
  end

   it 'ユーザ情報取得' do
    user = create(:user, name: 'dummy', age: 99 , address: 'kobe', sex: 1)

    get "/api/v1/users/#{user.id}"
    json = JSON.parse(response.body)

    # リクエスト成功を表す200が返ってきたか確認する。
    expect(response.status).to eq(200)

    # 要求した特定のポストのみ取得した事を確認する
    expect(json['data']['name']).to eq(user.name)
  end
end