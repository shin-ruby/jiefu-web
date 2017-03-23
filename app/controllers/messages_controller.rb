class MessagesController < ApplicationController

	def create
		@message = Message.new(message_params)

    respond_to do |format|
      if @message.save
        flash[:success] = "提交成功!"
        format.html { redirect_to support_url }
      else
        format.html { render "static_pages/support" }
      end
    end
	end

	private

	def message_params
		params.require(:message).permit(:name, :mobile, :email, :company, :content)
	end

end
