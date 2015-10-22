class MessagesController < ApplicationController
  before_action :set_message, only: [:edit, :update, :destroy]
  def index
    # Messageを全て取得する。
    @messages = Message.all
    @message = Message.new
  end
<<<<<<< HEAD
  def edit
  end
  
  def update
    if @message.update(message_params)
      # 保存に成功した場合はトップページへリダイレクト
      redirect_to root_path , notice: 'メッセージを編集しました'
    else
      # 保存に失敗した場合は編集画面へ戻す
      render 'edit'
    end
  end
  
  def destroy
    @message.destroy
    redirect_to root_path, notice: 'メッセージを削除しました'
  end
=======
>>>>>>> 167f4bea5ede2a823a8b48e9296ee5572e4ef3d6
  
  ## ここから追記
  def create
    p '*************************'
    @message = Message.new(message_params)
    if @message.save
<<<<<<< HEAD
    redirect_to root_path , notice: 'メッセージを保存しました'
=======
       redirect_to root_path , notice: 'メッセージを保存しました'
>>>>>>> 167f4bea5ede2a823a8b48e9296ee5572e4ef3d6
    else
      # メッセージが保存できなかった時
      @messages = Message.all
      flash.now[:alert] = "メッセージの保存に失敗しました。"
      render 'index'
    end
  end

  private
  def message_params
    params.require(:message).permit(:name, :body)
  end
  def set_message
    @message = Message.find(params[:id])
  end
  ## ここまで
end
