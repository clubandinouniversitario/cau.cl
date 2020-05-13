require "application_system_test_case"

class PagesTest < ApplicationSystemTestCase

  test "visiting the home" do
    visit page
    assert_selector "h1", text: "CLUB ANDINO UNIVERSITARIO"
  end
end
