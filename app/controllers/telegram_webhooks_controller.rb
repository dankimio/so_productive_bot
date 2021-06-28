class TelegramWebhooksController < Telegram::Bot::UpdatesController
  def start!(message)
    puts message.inspect
    puts from
    puts chat
  end
end
