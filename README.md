# What's this?
- Find layout name using specific field in FileMaker

# required gem
- [filemaker](https://github.com/mech/filemaker-ruby)

# install gem

```bash
$ bundle install --path vendor/bundle
```

# write config.yml
- write `config.yml` as below

```
fm_server:
  host: '123.123.123.123'
  username: 'my_username'
  password: 'my_password'
  db_name: 'target_db_name'
target_field_name: birthday
```

# exec script

```bash
$ ruby find_layout_using_specific_field.rb
```

# result

```bash
$ ruby find_layout_using_specific_field.rb
layout_01
layout_03
layout_07
layout_10
...
```

# LICENSE
- [MIT License](/LICENSE)
