class Message < ActiveRecord::Base
  #名前は必須入力かつ20文字以内とする
  validates :name, length: { maximum: 20 }, presence: true
  #内容は必須入力かつ2文字以上30文字以内とする
  validates :body, length:{ maximum:30, minimum:2}, presence:true
  #年齢は任意入力、0歳以上、数字とする
  validates :age, numericality: {only_integer:true, greater_than_or_equal_to: 0}, presence:false
end
