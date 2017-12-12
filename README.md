# What's this?
- Find layout name using specific field in FileMaker

# Required gem
- [filemaker](https://github.com/mech/filemaker-ruby)

# Prepare

```bash
$ bundle install
```

or

```bash
$ gem install filemaker
```

# Write config.yml
- write `config.yml` as below

```
fm_server:
  host: 123.123.123.123
  username: my_username
  password: my_password
  db_name: target_db_name
target_field_name: birthday
```

# Exec script

```bash
$ ruby find_layout_using_specific_field.rb
```

or

```bash
$ bundle exec ruby find_layout_using_specific_field.rb
```

# Result

```bash
$ ruby find_layout_using_specific_field.rb
members
profiles
calendars
special_days
...
```

# LICENSE
- [MIT License](/LICENSE)
