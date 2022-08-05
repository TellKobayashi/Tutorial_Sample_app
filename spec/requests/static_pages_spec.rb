require 'rails_helper'  # ライブラリや、別のソースファイルを読み込むrequire関数で、
                        # test/test_helperを呼び出す

RSpec.describe "StaticPages", type: :request do
  describe "GET /home" do # describeはテストのグループ化を宣言している
    it "returns http success" do # httpが戻ってきたらオッケーと言うこと
      get "/static_pages/home"    # GETメソッドで右のURLに接続している。
      expect(response).to have_http_status(:success)  # 上のgetの結果がresponseに格納される。
                                                      # (実行結果).to 期待する結果が真の場合
                                                      #テストは成功と言うこと
    end
  end

  describe "GET /help" do
    it "returns http success" do
      get "/static_pages/help"
      expect(response).to have_http_status(:success)
    end
  end

end
