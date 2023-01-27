require "test_helper"
require_relative "../../app/models/user"
require_relative "../../app/models/post"
class CommentTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "comment should have a body" do
    comment = Comment.new(post_id: 1, user_id: 1)
    assert_not comment.save, "Saved the comment without a body"
  end

  test "comment body should have at least 5 characters" do
    comment = Comment.new(post_id: 1, user_id: 1, body: "abc")
    assert_not comment.save,
               "Saved the comment with less than 5 characters in the body"
  end

  test "comment body should have at most 140 characters" do
    comment = Comment.new(post_id: 1, user_id: 1, body: "a" * 141)
    assert_not comment.save,
               "Saved the comment with more than 140 characters in the body"
  end

  test "comment should belong to a post" do
    comment = Comment.new(body: "Test comment", user_id: 1)
    assert_not comment.save, "Saved the comment without a post association"
  end

  test "comment should belong to a user" do
    comment = Comment.new(body: "Test comment", post_id: 1)
    assert_not comment.save, "Saved the comment without a user association"
  end
end
