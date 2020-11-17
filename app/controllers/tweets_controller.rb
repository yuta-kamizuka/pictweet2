class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all #allはActiveRecordメソッド、他にnew,saveなどがある
    # allメソッド。テーブルのすべてのデータを取得する
    # 今回は@tweetsというインスタンス変数に、tweetsテーブルのレコードをすべて代入した
  end
end
