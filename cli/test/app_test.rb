require 'minitest_helper'
require 'cli/app'

describe Cli::App do
  it "prints the list of bookmarks" do
    output = capture_io { Cli::App.start %w(list) }.first # stdout, stderr
    output.must_include "Tomaaa.com"
  end

  it "creates a bookmark" do
    output, error = capture_io { Cli::App.start %w(create --title=Title --url=http://tomaaa.com) }.first # stdout
    output.must_include "Created bookmark for 'Title'."
  end
end
