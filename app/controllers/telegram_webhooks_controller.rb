class TelegramWebhooksController < Telegram::Bot::UpdatesController
  def start!
    Chat.find_or_create_by!(chat_id: chat['id'])
  end
end
