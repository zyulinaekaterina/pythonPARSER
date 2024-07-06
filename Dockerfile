# Использование официального Python образа
FROM python:3.9-slim

# Установка зависимостей
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Копирование всех файлов приложения в рабочую директорию
COPY . .

# Открытие порта
EXPOSE 8000

# Команда для запуска приложения
CMD ["python", "app.py"]
