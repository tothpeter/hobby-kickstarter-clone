# frozen_string_literal: true

steps_for :sign_up_and_sign_in_with_email_happy_path do
  attr_reader :user

  step 'the user clicks on the sign up link' do
    visit('/')
    click_link('Login')
    click_link('Sign up')
  end

  step 'he lands on the sign up page' do
    expect_user_landed_on(new_user_registration_path)
  end

  step 'the user submits the filled form' do
    fill_in 'user_username', with: 'test_username'
    fill_in 'user_name', with: 'test_name'
    fill_in 'user_email', with: 'test@respec.com'
    fill_in 'user_password', with: 'SuperSecret98!'
    fill_in 'user_password_confirmation', with: 'SuperSecret98!'

    click_button('Sign up')
  end

  step 'we create a new user record' do
    @user = User.last

    expect(user.username).to eq('test_username')
    expect(user.name).to eq('test_name')
    expect(user.email).to eq('test@respec.com')
    expect(user).to be_valid_password('SuperSecret98!')
    expect(user).to be_valid
  end

  step 'he can can see the confirmation instruction' do
    expect(page).to have_content('a confirmation link has been sent')
  end
end
