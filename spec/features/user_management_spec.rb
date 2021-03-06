feature 'User sign up' do

  scenario 'I can sign up as a new user' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, alice@example.com')
    expect(User.first.email).to eq('alice@example.com')
  end

  scenario 'requires a matching confirmation password' do
  # again it's questionable whether we should be testing the model at this
  # level.  We are mixing integration tests with feature tests.
  # However, it's convenient for our purposes.
  expect { sign_up(password_confirmation: 'wrong') }.not_to change(User, :count)
end
end
