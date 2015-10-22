class Message < ActiveRecord::Base
    # 名前は必須入力かつ20文字以内
<<<<<<< HEAD
    validates :name , length: {  maximum: 20 } , presence: true
    # 内容は必須入力かつ2文字以上30文字以下
    validates :body , length: {minimum: 2 , maximum: 30 } , presence: true
=======
    #validates :name , length: {  maximum: 20 } , presence: true
    # 内容は必須入力かつ2文字以上30文字以下
    #validates :body , length: {minimum: 2 , maximum: 30 } , presence: true
>>>>>>> 167f4bea5ede2a823a8b48e9296ee5572e4ef3d6
end