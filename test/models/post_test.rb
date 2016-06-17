require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(title: "Reddit", link: "www.Reddit.com", user_id: 1)
  end

  test "post should be valid" do
    assert @post.valid?
  end

  test "post requires a title" do
    @post.title = ""
    assert_not @post.valid?
  end

  test "post requires a link" do
    @post.link = ""
    assert_not @post.valid?
  end
end
