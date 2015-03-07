require 'minitest_helper'
require 'cli/config'

module Cli
  describe Config do
    it "knows the host" do
      Cli::Config.load :development
      Cli::Config.host.must_equal "localhost:3000"
    end
  end
end