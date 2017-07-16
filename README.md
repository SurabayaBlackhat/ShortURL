# SBH Short URL

- Ruby version `2.3.3`
- Rails version `5.1.1`
- And more, you can see on `Gemfile`

## Setup

#### Development environment:
```
bundle install --without production
```

#### Production environment:
```
bundle install --deployment --without development test
bundle exec rake db:migrate RAILS_ENV=production
bundle exec rake assets:precompile RAILS_ENV=production
```

__Get key secure__
```
rake secret RAILS_ENV=production
```

#### Update source Production
```
bundle exec rake db:migrate RAILS_ENV=production
bundle exec rake assets:precompile RAILS_ENV=production
```

#### Thin

**Single Server**
```
ps aux | grep thin
kill ID
rails server thin -d -p 3000
```

**Multiple Servers (Cluster)**
```
thin stop -C config/thin.yml
thin start -C config/thin.yml
```

#### Database initialization:

```
rails db:create
rails db:migrate
rails db:seed
```

#### Maintenance
```
rake maintenance:start
rake maintenance:end
```

#### Character Set
```
ALTER DATABASE Database_Name CHARACTER SET utf8 COLLATE utf8_general_ci;
```
