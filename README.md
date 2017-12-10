# What's this?
- Find layout name using specific field in FileMaker

# Required gem
- [filemaker](https://github.com/mech/filemaker-ruby)

# Write config.yml
- write `config.yml` as below

```
fm_server:
  host: '123.123.123.123'
  username: 'my_username'
  password: 'my_password'
  db_name: 'target_db_name'
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
$ bundle exec ruby find_layout_using_specific_field.rb
layout_name_01
layout_name_03
layout_name_07
layout_name_10
...
```

# LICENSE
- [MIT License](/LICENSE)
