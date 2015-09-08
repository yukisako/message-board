class Message < ActiveRecord::Base
  #名前は必須入力かつ10文字以内とする
  validates :name, length: { maximum: 10 }, presence: true
  #内容は必須入力かつ2文字以上40文字以内とする
  validates :body, length:{ maximum:40, minimum:2}, presence:true
  #年齢は任意入力、0歳以上100歳以下、数字とする
  validates :age, numericality: {only_integer:true, greater_than_or_equal_to: 0,less_than: 100}, presence:true
end
