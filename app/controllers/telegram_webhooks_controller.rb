class TelegramWebhooksController < Telegram::Bot::UpdatesController
  def start!
    @chat = Chat.find_or_create_by!(chat_id: chat['id'])

    Telegram.bot.send_message(
      chat_id: @chat.chat_id,
      text: 'Привет! Теперь я буду всеми способами отвлекать тебя от работы'
    )

    Telegram.bot.send_message(
      chat_id: @chat.chat_id,
      text: ADVICE.sample
    )
  end
end
