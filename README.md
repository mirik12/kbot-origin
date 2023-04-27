# kbot
DevOps application from scratch 

mirik12_bot (t.me/mirik12_bot.) - це Telegram-бот, який дозволяє користувачам здороватися (поки що)

Інструкції з встановлення та конфігурації:

1.Склонуйте репозиторій за допомогою команди git clone https://github.com/mirik12/kbot.git
2.Створіть Telegram-бота за допомогою Telegram BotFather
3.Встановіть бібліотеку telebot 
4.Зіберіть проєкт за допомогою команди go build
5.Запустіть бота за допомогою команди ./kbot -t TELE_TOKEN, де TELE_TOKEN - це токен вашого Telegram-бота

Команди:
Команда: go build -ldflags="-X 'github.com/mirik12/kbot/cmd.appVersion=v1.0.2'" - ця команда  компілює проєкт за допомогою го - компілятора зі встановленням значення змінної appVersion (v1.0.0 ; v1.0.1, v 1.0.2) відповідно до git-тегу останнього коміту з допомогою флагу -ldflags
-ldflags це  флаг команди go build
Отже, команда git build -ldflags "-X 'github.com/mirik12/kbot/tree/main/cmd.appVersion=v1.0.2'" встановлює змінну appVersion в файлі cmd/kbot.go на значення "v1.0.2".
За дпомогою команди echo $TELE_TOKEN - ми можемо перевірити наш токен телеграм



Приклад використання
Після запуску бота в терміналі введіть команду /start (або /start hello), щоб розпочати роботу з ним. Після цього ви можете використовувати різні команди для отримання інформації.