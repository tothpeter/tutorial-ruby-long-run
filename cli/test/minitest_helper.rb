$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'cli'
require 'yaml'

require 'minitest/autorun'

Cli::Config.load :development