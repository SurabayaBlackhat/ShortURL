# SBH Short URL

## Technologies

- Ruby version `2.4.1`
- Rails version `5.1.1`
- And more, you can see on [Gemfile](Gemfile)

## Setup

#### Development environment:
```
bundle install --without production
```

#### Production environment:
```
bundle install --deployment --without development test
rails db:migrate RAILS_ENV=production
rails assets:precompile RAILS_ENV=production
```

__Get key secure__
```
rails secret RAILS_ENV=production
```

#### Update source Production
```
bundle exec rails db:migrate RAILS_ENV=production
bundle exec rails assets:precompile RAILS_ENV=production
```

#### Database initialization:

```
rails db:create
rails db:migrate
rails db:seed
```

#### Maintenance
```
rails maintenance:start
rails maintenance:end
```

#### Character Set
```
ALTER DATABASE Database_Name CHARACTER SET utf8 COLLATE utf8_general_ci;
```
