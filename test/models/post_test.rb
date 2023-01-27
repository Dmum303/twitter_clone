require "test_helper"

class PostTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "post should have a body" do
    post = Post.new(user_id: 1)
    assert_not post.save, "Saved the post without a body"
  end

  test "post body should have at least 5 characters" do
    post = Post.new(user_id: 1, body: "abc")
    assert_not post.save,
               "Saved the post with less than 5 characters in the body"
  end

  test "post body should have at most 140 characters" do
    post = Post.new(user_id: 1, body: "a" * 141)
    assert_not post.save,
               "Saved the post with more than 140 characters in the body"
  end

  test "post should belong to a user" do
    post = Post.new(body: "Test post")
    assert_not post.save, "Saved the post without a user association"
  end
end
