require "init"
require "app"

require "minitest/autorun"

Bundler.require :test

class MiniTest::Spec
  include Capybara::DSL
end

Capybara.app = App

def spawn_bookmark
  create_service = CreateBookmark.new title: "Removable", url: "http://tomaaa.com"
  create_service.create

  create_service.bookmark
end