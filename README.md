# What's this?
- Find layout name using specific field in FileMaker

# Required gem
- [filemaker](https://github.com/mech/filemaker-ruby)

# Prepare

```bash
$ bundle install
```

# Write config.yml
- write `config.yml` as below

```
fm_server:
  host: 10.10.10.100
  username: my_username
  password: my_password
```

# Exec script
- ARGV[0] is database name
- ARGV[1] is target field name

```bash
$ bundle exec ruby find_layout_using_specific_field.rb customers birthday
```

# Result

```bash
$ bundle exec ruby find_layout_using_specific_field.rb customers birthday
members
profiles
calendars
special_days
...
```

# LICENSE
- [MIT License](/LICENSE)
