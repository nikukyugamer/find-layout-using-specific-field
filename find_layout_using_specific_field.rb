require 'bundler/setup'
require 'filemaker'
require 'yaml'

CONFIG_FILE = YAML.load_file('config.yml')

def fm_server
  config_file = YAML.load_file('config.yml')
  fm_server = Filemaker::Server.new do |config|
    config.host         = CONFIG_FILE['fm_server']['host']
    config.account_name = CONFIG_FILE['fm_server']['username']
    config.password     = CONFIG_FILE['fm_server']['password']
  end
end

def searched_values
  @target_field_name  = CONFIG_FILE['target_field_name']
  @db_name            = CONFIG_FILE['fm_server']['db_name']
  @layout_names       = fm_server.database[@db_name].layouts.all # Array
end

def layout_name_using_specific_field
  @layout_names.each do |layout_name|
    begin
      fm_server.database[@db_name].layout[layout_name].view.fields.each do |field_name, field_value|
        puts "#{layout_name}" if field_name == @target_field_name
      end
    rescue => exception
      # for `Layout is missing`
    end
  end
end

searched_values
layout_name_using_specific_field
