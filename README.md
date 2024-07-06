Python Parser
Описание
Этот проект представляет собой веб-приложение, написанное на Python с использованием Flask и SQLAlchemy. Приложение парсит вакансии с API hh.ru (HeadHunter) и сохраняет их в базе данных SQLite. Оно также предоставляет веб-интерфейс для отображения списка вакансий и позволяет искать вакансии по названию, городу и опыту работы.

## Требования

Для запуска проекта вам понадобится:

- Python 3.9 или выше
- Docker
- Docker Compose

## Установка

1. Склонируйте репозиторий на ваш локальный компьютер:

    ```sh
    git clone https://github.com/yourusername/pythonPARSER.git
    cd pythonPARSER
    ```

2. Убедитесь, что у вас установлены Docker и Docker Compose.

3. Создайте виртуальное окружение и активируйте его:

    ```sh
    python -m venv .venv
    source .venv/bin/activate  # Для Windows используйте .venv\Scripts\activate
    ```

4. Установите зависимости:

    ```sh
    pip install -r requirements.txt
    ```

## Запуск

Для запуска проекта с использованием Docker, выполните следующие шаги:

1. Соберите и запустите контейнеры Docker:

    ```sh
    docker-compose up --build
    ```

2. Приложение будет доступно по адресу [http://localhost:8000](http://localhost:8000).

## Использование

После запуска приложения вы можете:

1. Перейти на главную страницу и ввести данные для поиска вакансий: название вакансии, город и опыт работы.
2. Нажать "Find" для начала поиска вакансий.
3. Перейти на страницу `/vac`, чтобы увидеть список найденных вакансий.

## Структура проекта

```plaintext
.
├── Dockerfile
├── README.md
├── app.db
├── app.py
├── docker-compose.yml
├── requirements.txt
└── templates
    └── vacancies.html

Dockerfile: Конфигурация Docker для создания образа приложения.
README.md: Этот файл с инструкциями по установке и использованию.
app.db: Файл базы данных SQLite.
app.py: Основной файл приложения Flask.
docker-compose.yml: Конфигурация Docker Compose для оркестрации контейнеров.
requirements.txt: Список зависимостей проекта.
templates/vacancies.html: HTML-шаблон для отображения списка вакансий.

Автор
Зюлина Екатерина - kzylina@gmail.com
