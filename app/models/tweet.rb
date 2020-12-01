class Tweet < ApplicationRecord
  # このバリデーションの設定により、空のツイートは登録できなくなりました。 validates :カラム名, バリデーションの種類
  validates :text, presence: true
end
