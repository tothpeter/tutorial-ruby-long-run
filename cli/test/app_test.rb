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

  it "updates a bookmark" do
    output, error = capture_io { Cli::App.start %w(update --id=980191122 --title=Title2 --url=http://tomaaa.hu) } # stdout
    output.must_include "Updated bookmark, it is now 'Title2'."
  end

  it "removes a bookmark" do
    create_service = CreateBookmark.new title: "Removable", url: "http://tomaaa.com"
    create_service.create

    output, error = capture_io { Cli::App.start ["remove", create_service.bookmark.id] } # stdout
    output.must_include "Removed bookmark."
  end
end
