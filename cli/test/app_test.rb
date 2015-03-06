require 'minitest_helper'
require 'cli/app'

describe Cli::App do
  it "prints the list of bookmarks" do
    output = capture_io { Cli::App.start %w(list) }.first # stdout
    output.must_include "Tomaaa.com"
  end
end
