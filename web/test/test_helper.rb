require "init"
require "app"

require "minitest/autorun"

Bundler.require :test

class MiniTest::Spec
  include Capybara::DSL
end

Capybara.app = App