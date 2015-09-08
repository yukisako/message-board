class Message < ActiveRecord::Base
  #名前は必須入力かつ20文字以内とする
  validates :name, length: { maximum: 20 }, presence: true
  #内容は必須入力かつ2文字以上30文字以内とする
  validates :body, length:{ maximum:30, minimum:2}, presence:true
end
