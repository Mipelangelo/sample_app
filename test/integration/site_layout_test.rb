require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

test "layout links" do
  get root_path
  assert_template 'static_pages/home'
  assert_select "a[href=?]", root_path, count: 2
  assert_select "a[href=?]", help_path
  assert_select "a[href=?]", about_path
  assert_select "a[href=?]", newpage_path
  get newpage_path
  assert_select "title", full_title("NewPage")
end

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title, help_path
    assert_equal full_title("Help"), help_path
  end

end

end
