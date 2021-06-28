class TelegramWebhooksController < Telegram::Bot::UpdatesController
  def start!
    puts from
    puts chat
  end
end
