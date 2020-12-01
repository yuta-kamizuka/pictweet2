Rails.application.routes.draw do
  # resources :tweets  この記述は7つのアクション全てを適用
  root to: 'tweets#index'#ツイートの一覧ページへ遷移するように設定
  # onlyオプションでアクションを指定したものだけを生成。不要なアクションを作らないことで余計なエラーを防ぐ
  # resources :tweets, only: [:index, :new, :create, :destroy, :edit, :update, :show]
  # 上記は7つのアクションがそろってるので下記のようにonly外した7つのアクション全てに対応する記述に変更
  resources :tweets
end
