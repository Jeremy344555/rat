#!/bin/bash

# Скрипт запуска утилиты 1С с параметрами из файла .env
# Автор: RAT Community
# Версия: 1.0

set -e  # Остановка при ошибке

# Определяем директорию скрипта
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Путь к файлу .env
ENV_FILE="$SCRIPT_DIR/.env"

# Проверяем существование файла .env
if [ ! -f "$ENV_FILE" ]; then
    echo "Ошибка: Файл .env не найден в директории $SCRIPT_DIR"
    echo "Создайте файл .env на основе env.example"
    exit 1
fi

# Загружаем переменные из .env
source "$ENV_FILE"

# Проверяем обязательные параметры
if [ -z "$VERSION" ]; then
    echo "Ошибка: Не указана версия платформы 1С в файле .env"
    exit 1
fi

if [ -z "$DATA_PATH" ]; then
    echo "Ошибка: Не указан путь к данным базы в файле .env"
    exit 1
fi

# Формируем полный путь к исполняемому файлу
IBSRV_PATH="/opt/1cv8/x86_64/$VERSION/ibsrv"

# Проверяем существование исполняемого файла
if [ ! -f "$IBSRV_PATH" ]; then
    echo "Ошибка: Исполняемый файл не найден: $IBSRV_PATH"
    echo "Проверьте правильность версии и архитектуры в файле .env"
    exit 1
fi

# Проверяем существование каталога с данными
if [ ! -d "$DATA_PATH" ]; then
    echo "Ошибка: Каталог с данными не найден: $DATA_PATH"
    echo "Проверьте правильность пути в файле .env"
    exit 1
fi

# Выводим информацию о запуске
echo "Запуск утилиты 1С:"
echo "  Версия: $VERSION"
echo "  Путь к данным: $DATA_PATH"
echo "  Исполняемый файл: $IBSRV_PATH"
echo ""

COMMAND="$IBSRV_PATH --data=$DATA_PATH --db-path=./ --config=$SCRIPT_DIR/standalone.yml"

# Запускаем утилиту
echo "Выполняется команда:"
echo "$COMMAND"
echo ""

exec $COMMAND
