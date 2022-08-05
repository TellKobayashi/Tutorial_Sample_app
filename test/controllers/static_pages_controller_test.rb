require 'test_helper'   #ライブラリや、別のソースファイルを読み込むrequire関数で、
                        #test/test_helperを呼び出す

class StaticPagesControllerTest < ActionDispatch::IntegrationTest   
        #Action~がStatic~に継承されている。一番後ろの::IntegrationTestは、IntegrationTest絶対的な
        #位置指定になる。つまり、Integtration~はAction~の親クラスだよーってこと。
  test "should get home" do #テストの名前
    get static_pages_home_url
    assert_response :success
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
  end

end
