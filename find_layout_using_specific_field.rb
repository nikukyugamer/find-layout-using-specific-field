require 'bundler/setup'
require 'filemaker'
require 'yaml'

config_file = YAML.load_file('config.yml')
fm_server = Filemaker::Server.new do |config|
  config.host         = config_file['fm_server']['host']
  config.account_name = config_file['fm_server']['username']
  config.password     = config_file['fm_server']['password']
end

db_name           = config_file['fm_server']['db_name']
target_field_name = config_file['target_field_name']
layout_names      = fm_server.database[db_name].layouts.all # Array

layout_names.each do |layout_name|
  begin
    fm_server.database[db_name].layout[layout_name].view.fields.each do |field_name, field_value|
      puts "#{layout_name}" if field_name == target_field_name
    end
  rescue => exception
    # for `Layout is missing`
  end
end
