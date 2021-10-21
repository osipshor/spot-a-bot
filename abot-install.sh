#! /bin/bash

defaultBotName="A-Bot"
if [ -f ${defaultBotName} ]; then
    echo "Бот уже установлен, удаляю бота и загружу последнюю версию, ожидайте..."
    rm ${defaultBotName}
fi

echo "[1/3] Загружаю последнюю версию бота..."
wget -q https://drive.google.com/file/d/1_lB4PzKbhm-P06d7qrcXudFXXH-U0Rrk/view?usp=sharing
echo "[2/3] Бот загружен, выставляю права доступа..."
chmod 755 ${defaultBotName}
echo "[3/3] Всё готово, запускайте бота командой: ./${defaultBotName}"
