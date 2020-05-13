require 'test_helper'

class PageTest < ActiveSupport::TestCase
  test "should not save page without title neither description" do
    page = Page.new
    assert_not page.save, "Saved the page without title neither description"
  end
end
