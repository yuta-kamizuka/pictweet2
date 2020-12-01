class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all #allはActiveRecordメソッド、他にnew,saveなどがある
    # allメソッド。テーブルのすべてのデータを取得する
    # 今回は@tweetsというインスタンス変数に、tweetsテーブルのレコードをすべて代入した
  end

  def new
    @tweet = Tweet.new #クラスのインスタンス（レコード）を生成する
  end

  def create
    Tweet.create(tweet_params)
  end

  def destroy
    # destroyアクションは、ツイートを削除するだけで、ビューにツイート情報を受け渡す必要はありません。そのため、インスタンス変数ではなくただの変数として置き、destroyメソッドを使用します。
    # params[:id]をもとに、削除したいツイートをfindメソッドを用いて取得します
    tweet = Tweet.find(params[:id])
    # 続いて、そのツイートをdestroyメソッドで削除します。
    tweet.destroy
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    # tweet.update(tweet_params) 変更したデータをupdateメソッドを使い、tweet_paramsを更新する
    # updateアクションもdestroyアクションと同じでビューに情報を渡すわけではないためインスタンス変数は使わず、ただの変数にする
    tweet.update(tweet_params)
  end

  private

  def tweet_params
    # params データを入れる箱のようなもの  paramsメソッドとはRailsで送られたきたパラメーターを受け渡しするメソッドです。主にPOSTでフォームから送られてきたパラメータを受け渡す際に使われます。  
    # require requireメソッドは、パラメーターからどの情報を取得するか、選択します。
    # (:tweet) モデル名
    # permit requireメソッドと同様に、paramsが使用できるメソッドです。permitメソッドを使用すると、取得したいキーを指定でき、指定したキーと値のセットのみを取得します。
    params.require(:tweet).permit(:name, :image, :text)
  end

end
