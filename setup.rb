require 'pry-byebug' # in case you want to use binding.pry
require 'active_record'

require_relative 'models/user'
require_relative 'models/event'
require_relative 'models/ticket_inventory'
require_relative 'models/ticket'

# Output messages from Active Record to standard out
ActiveRecord::Base.logger = Logger.new(STDOUT)

puts 'Establishing connection to database ...'
ActiveRecord::Base.configurations = YAML::load(File.open('./db/config.yml'))
ActiveRecord::Base.establish_connection(:development)
puts 'CONNECTED'


puts 'Setup DONE'
