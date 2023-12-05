# Проект 'TheBoysTest'
### Сайт, где можно проходить тесты, делать тесты (приватные/публичные), ставить рейтинг тестам (рейтинг составителя теста будет вычисляться по среднему рейтингу его тестов)

|Фамилия|Имя|Группа|
| --- | --- | --- |
| Мовчан | Егор | 3.10 |
| Шпуганич | Алексей | 3.10 |
| Корж | Андрей | 3.11 |
| Иванов | Матвей | 3.10 |
| Леончик | Станислав | 3.11 |
| Тупикин | Олег | 3.10 |
| Новиков | Олег | 3.10 |
| Кулаков | Станислав | 3.11 |

## Роутинг
Поиск тестов по тегам, страница создания теста, просмотр результатов (прошедшему и автору тесты)
(Роутинг описан в файле routes.rb, схема бд - в файле databaseschema.pdf)

## Running in development mode
Dependencies:
- Ruby 3.2
- PostgreSQL
- Node.js

Fill credentials in `.env` file as:
```
THE_BOYS_TEST_DATABASE_USERNAME=your_postgres-username
THE_BOYS_TEST_DATABASE_PASSWORD=your_postgreg_password
```

Install dependencies:
```bash
bundle install
npm install
```

Run the frontend dev build:
```bash
foreman start -f Procfile.dev
```
or if port `5000` is busy:
```zsh
PORT=3030 foreman start -f Procfile.dev
```

Run the web server from IDE or from terminal with
```bash
rails s
```

