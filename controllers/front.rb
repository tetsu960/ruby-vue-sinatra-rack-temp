# frozen_string_literal: true

require_relative 'base'
require 'json'

#
# フロント機能コントローラ
#
class FrontController < BaseController
  set :views, (proc { File.join(root, 'views/front') })

  # 初期設定
  configure do
  end

  # -------
  # 画面表示処理
  # -------
  get '/' do
    send_file File.join(settings.public_folder, 'index.html')
  end

  # -------
  # API処理
  # -------
  get '/get_hoge' do
    p params

    { result: 'フリープランで登録しました。' }.to_json
  end
end
