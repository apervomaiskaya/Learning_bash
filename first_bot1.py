# from telegram import Update
# from telegram.ext import Application, CommandHandler, ContextTypes

# # Введите свой токен сюда
# TOKEN = "7350577031:AAHUg8KkDvYgnoHN4lT3jCShns4eBXf3O-8"

# async def start(update: Update, context: ContextTypes.DEFAULT_TYPE) -> None:
#     await update.message.reply_text('Hello!')

# def main() -> None:
#     # Создайте объект Application
#     application = Application.builder().token(TOKEN).build()

#     # Обработчик команды /start
#     start_handler = CommandHandler('start', start)
#     application.add_handler(start_handler)

#     # Запустите бота
#     application.run_polling()

# if __name__ == '__main__':
#     main()



from telegram import Update
from telegram.ext import Application, CommandHandler, ContextTypes

import logging

# Настройка уровня логирования
logging.basicConfig(level=logging.ERROR)

# Ваш API токен
TOKEN = '7350577031:AAHUg8KkDvYgnoHN4lT3jCShns4eBXf3O-8'

async def start(update: Update, context: ContextTypes.DEFAULT_TYPE) -> None:
    """Отправляет сообщение, когда команда /start вызывается."""
    await update.message.reply_text('Привет! Я ваш бот. Напишите /help, чтобы узнать доступные команды.')

async def help_command(update: Update, context: ContextTypes.DEFAULT_TYPE) -> None:
    """Отправляет сообщение, когда команда /help вызывается."""
    await update.message.reply_text('Список команд:\n/start - Запустить бота\n/help - Получить помощь')

def main():

    """Запуск бота."""
    # Создание объекта Application
    application = Application.builder().token(TOKEN).build()

    # Обработчик команды /start
    application.add_handler(CommandHandler('start', start))

    # Обработчик команды /help
    application.add_handler(CommandHandler('help', help_command))

    # Запуск бота
    application.run_polling()

if __name__ == '__main__':
    main()





