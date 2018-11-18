# Club Andino Universitario
Ruby 2.4.1

Rails 5.2.1

### Setup

#### 1. Install dependencies
`bundle install`

`yarn install`

#### 3. Setup Database

Setup .env (if not already):
```
DATABASE_DEV_USERNAME=username
DATABASE_DEV_PASSWORD=123123123
```

Create database (if not already):
`rails db:create`

Run migrations:
`rails db:migrate`

Run seed (if not already):
`rails db:seed`

#### 4. Credentials
To edit or see the app/config/credentials.yml.enc you must have the master.key file.
Ask the project admin to send it to you.
After that, you can just execute:
`EDITOR=nano rails credentials:edit`
