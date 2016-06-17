require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: "thracken", email: "thracken@example.com", password: "foobar123")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "email is invalid" do
    @user.email = "bob@email"
    assert_not @user.valid?
  end

  test "email should be at least 4 chars long" do
    @user.username = "bob"
    assert_not @user.valid?
  end

  test "email should be no more than 30 chars long" do
    @user.username = "a"*31
    assert_not @user.valid?
  end

end
