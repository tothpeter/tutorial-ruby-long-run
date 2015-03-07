require "test_helper"

describe "Creating a bookmark" do
  it "creates a bookmark" do
    timestamp = Time.now.to_i

    visit "/"

    fill_in "Title", with: "Tomaaa.com (#{timestamp})"
    fill_in "URL", with: "http://tomaaa.com"

    click_button "Create bookmark"

    page.must_have_content "Tomaaa.com (#{timestamp})"
  end
end