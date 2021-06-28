advice = [
  'проверь инстаграм',
  'посмотри сериал',
  'ещё пару тиктоков',
  'посмотри ютуб',
  'почитай твиттер'
]

namespace :telegram do
  task send_advice: :environment do
    Chat.newly_created.or(Chat.stale).find_each do |chat|
      Telegram.bot.send_message(
        chat_id: chat.chat_id,
        text: advice.sample
      )
      chat.touch
    end
  end
end
