class ConversationsController < ApplicationController
  before_action :logged_in?

  def new
  end

  def create
    conversation = StartConversation.new.create(conversation_params, current_user)
    show_flash(:notice, "Your message was successfully sent!")
    redirect_to conversation_path(conversation)
  end

  def show
    @receipts = conversation.receipts_for(current_user).order("created_at ASC")
    # mark conversation as read
    conversation.mark_as_read(current_user)
  end

  def reply
    current_user.reply_to_conversation(conversation, message_params[:body])
    show_flash(:notice, "Your reply message was successfully sent!")
    redirect_to conversation_path(conversation)
  end

  def trash
    conversation.move_to_trash(current_user)
    redirect_to mailbox_inbox_path
  end

  def untrash
    conversation.untrash(current_user)
    redirect_to mailbox_inbox_path
  end

  def show_flash(flash_type, flash_body)
    flash[:flash_type] = flash_body 
  end
  
  private

  def conversation_params
    params.require(:conversation).permit(:subject, :body,recipients:[])
  end

  def message_params
    params.require(:message).permit(:body, :subject)
  end
end

class StartConversation
  include SessionsHelper
  
  def create(conversation_params, current_user_params)
    recipients = User.where(id: conversation_params[:recipients])
    conversation = current_user_params.send_message(recipients, conversation_params[:body], conversation_params[:subject]).conversation
    return conversation
  end
end