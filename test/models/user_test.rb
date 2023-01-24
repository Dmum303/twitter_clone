require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  # create test to check new user is valid
  test "user is valid with valid attributes" do
    user =
      User.new(
        username: "johndoe",
        name: "John Doe",
        email: "johndoe@example.com",
        password: "Password1!"
      )
    assert user.valid?
  end

  test "user is not valid without a name" do
    user =
      User.new(
        email: "johndoe@example.com",
        password: "Password1!",
        username: "johndoe"
      )
    assert_not user.valid?
  end

  test "user is not valid without an email" do
    user =
      User.new(name: "John Doe", password: "Password1!", username: "johndoe")
    assert_not user.valid?
  end

  test "user is not valid without a password" do
    user =
      User.new(
        name: "John Doe",
        email: "johndoe@example.com",
        username: "johndoe"
      )
    assert_not user.valid?
  end

  test "user email must be unique" do
    user1 =
      User.create(
        name: "John Doe",
        email: "johndoe@example.com",
        password: "Password1!",
        username: "JohnDoe123"
      )
    user2 =
      User.new(
        name: "Jane Doe",
        email: "johndoe@example.com",
        password: "Password1!",
        username: "JohnDoe321"
      )
    assert_not user2.valid?
  end

  test "user username must be unique" do
    user1 =
      User.create(
        name: "John Doe",
        email: "johndoe@example.com",
        password: "Password1!",
        username: "JohnDoe"
      )
    user2 =
      User.new(
        name: "Jane Doe",
        email: "johndoe123@example.com",
        password: "Password1!",
        username: "JohnDoe"
      )
    assert_not user2.valid?
  end

  test "Email must be valid" do
    user1 =
      User.new(
        username: "johndoe",
        name: "John Doe",
        email: "!!!!!!!example.com",
        password: "Password1!"
      )
    assert_not user1.valid?
    user2 =
      User.new(
        username: "johndoe",
        name: "John Doe",
        email: "daveexample",
        password: "Password1!"
      )
    assert_not user2.valid?
  end

  test "Password must be valid" do
    user1 =
      User.new(
        username: "johndoe",
        name: "John Doe",
        email: "johndoe123@example.com",
        password: "password"
      )
    assert_not user1.valid?
  end
end
