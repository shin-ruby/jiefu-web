module Admin
  class MessagesController < Admin::ApplicationController
    before_action :logged_in_user

    before_action :set_message, only: [:show, :destroy]

    # GET /admin/messages
    # GET /admin/messages.json
    def index
      @messages = Message.all
    end

    # GET /admin/messages/1
    # GET /admin/messages/1.json
    def show
    end

    # DELETE /admin/messages/1
    # DELETE /admin/messages/1.json
    def destroy
      @message.destroy
      flash[:success] = "删除成功!"
      respond_to do |format|
        format.html { redirect_to admin_messages_url }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_message
        @message = Message.find(params[:id])
      end

  end
end