require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "test the truth" do
    assert true
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url,
           params: {
             user: {
               name: "John Doe",
               username: "johndoe",
               email: "johndoe@example.com",
               password: "Password123!"
             }
           }
    end
    assert_redirected_to login_path
  end

  # test "should not create user with invalid email" do
  #   assert_no_difference("User.count") do
  #     post users_url,
  #          params: {
  #            user: {
  #              name: "John Doe",
  #              username: "johndoe",
  #              email: "johndoeexample.com",
  #              password: "password123"
  #            }
  #          }
  #   end

  #   assert_render "new"
  # end

  # test "should not create user with invalid password" do
  #   assert_no_difference("User.count") do
  #     post users_url,
  #          params: {
  #            user: {
  #              name: "John Doe",
  #              username: "johndoe",
  #              email: "johndoe@example.com",
  #              password: "password"
  #            }
  #          }
  #   end

  #   assert_response :unprocessable_entity
  # end

  # test "should not create user with non-unique username" do
  #   user =
  #     User.create(
  #       name: "John Doe",
  #       username: "johndoe",
  #       email: "johndoe@example.com",
  #       password: "password123"
  #     )

  #   assert_no_difference("User.count") do
  #     post users_url,
  #          params: {
  #            user: {
  #              name: "John Doe",
  #              username: "johndoe",
  #              email: "johndoe2@example.com",
  #              password: "password123"
  #            }
  #          }
  #   end

  #   assert_response :unprocessable_entity
  # end
end
