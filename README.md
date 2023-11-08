# TheBoysTest
Лучший сайт ever с тестами на руби, разрабатываемый студентами 3-его курса лучшего вуза страны:

Мовчан, Корж, Леончик, Новиков, Тупикин, Кулаков, Шпуганич, Иванов 

<h3>роутинг описан в файле routes.rb, схема бд - в файле databaseschema.pdf</h3>

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
