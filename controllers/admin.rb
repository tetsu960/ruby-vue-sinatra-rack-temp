# frozen_string_literal: true

require_relative 'base'

#
# 管理機能コントローラ
#
class AdminController < BaseController
  set :views, (proc { File.join(root, 'views/admin') })

  get '/' do
    erb :index
  end

  # -------
  # API処理
  # -------
  post '/get_hoge' do
    params = JSON.parse(request.body.read)
    p params

    { result: params['text'] }.to_json
  end
end
