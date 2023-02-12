class User < ApplicationRecord
  before_save :downcase_fields

  VALID_PASWORD_REGEX =
    /\A
  (?=.{8,}) # at least 8 characters
  (?=.*\d) # at least 1 digit
  (?=.*[a-z]) # at least 1 lowercase letter
  (?=.*[A-Z]) # at least 1 uppercase letter
  (?=.*[[:^alnum:]]) # at least 1 special character
  /x

  has_secure_password
  has_many :posts

  validates :email,
            presence: true,
            uniqueness: true,
            format: {
              with: URI::MailTo::EMAIL_REGEXP,
              message: "Only allows valid emails"
            }
  validates :password,
            presence: true,
            format: {
              with: VALID_PASWORD_REGEX,
              message:
                "Password must be at least 8 characters, with at least 1 digit/1 lowercase letter/1uppercase letter/1 special character"
            }
  validates :username, presence: true, uniqueness: true
  validates :name, presence: true

  private

  def downcase_fields
    self.email.downcase!
    self.username.downcase!
  end

end
