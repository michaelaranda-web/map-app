module CreateAccountHelper
  def signup_with_valid_account_information
    fill_in "user_email", with: "frank@ocean.com"
    fill_in "user_password", with: "password"
    fill_in "user_password_confirmation", with: "password"
  end
end
