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
  get '/get_hoge' do
    p params

    { result: '有料プランで登録しました。' }.to_json
  end
end
