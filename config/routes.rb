Rails.application.routes.draw do
  # resources :tweets  この記述は7つのアクション全てを適用

  # onlyオプションでアクションを指定したものだけを生成。不要なアクションを作らないことで余計なエラーを防ぐ
  resources :tweets, only: [:index]

end
