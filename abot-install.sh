#! /bin/bash

defaultBotName="A-Bot"
if [ -f ${defaultBotName} ]; then
    echo "Бот уже установлен, удаляю бота и загружу последнюю версию, ожидайте..."
    rm ${defaultBotName}
fi

echo "[1/3] Загружаю последнюю версию бота..."
wget -q https://github.com/osipshor/spot-a-bot/releases/download/1.483/A-Bot
echo "[2/3] Бот загружен, выставляю права доступа..."
chmod 755 ${defaultBotName}
echo "[3/3] Всё готово, запускайте бота командой: ./${defaultBotName}"
