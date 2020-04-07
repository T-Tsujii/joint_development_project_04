class MessagesController < ApplicationController
 #一覧画面に対するアクション
  def index
   @messages = Message.all
  end
 #新規作成に関するアクション
  def new
   @message = Message.new
  end
  #新規登録に対するアクション
  def show
    @messages = Message.find(params[:id])
  end

 #
  def create
    # Strong Parameter の記述
    Message.create(message_params)
  end

  private

  def message_params
    params.require(:message).permit(:title, :content)
  end

end
