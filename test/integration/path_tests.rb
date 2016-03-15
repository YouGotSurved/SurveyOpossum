require 'test_helper'

class MustLogInTest < ActionDispatch::IntegrationTest
  test "login works well" do
    get root_path
    
    assert_template "login"
    assert_select "#notice", 1
    assert_select "input[type=name]", 1
    assert_select "input[type=password]", 1

    #Log in
    post session_login_path name: "marcia", password: "password"
    assert_redirected_to surveys_path
    follow_redirect!

    assert_select "tbody tr", Survey.count

    #Create a teacher

    #Make sure that I see one more.

    # Log out

    # Make sure I go to the login page.
  end
end
