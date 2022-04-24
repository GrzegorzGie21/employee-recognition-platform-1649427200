require 'rails_helper'

RSpec.describe 'Authentication process', type: :system do

  # Employee.create(email: 'test1@email.com', password: 'secret')
  let(:employee) { build :employee }

  it 'manage employee account' do
    visit new_employee_registration_path
    fill_in 'Email', with: employee.email
    fill_in 'Password', with: employee.password
    fill_in 'Password confirmation', with: employee.password
    click_button 'Sign up'
    expect(page).to have_content 'Welcome! You have signed up successfully.'

    click_link 'Sign Out'
    expect(page).to have_content 'You need to sign in or sign up before continuing.'

    visit new_employee_session_path
    fill_in 'Email', with: employee.email
    fill_in 'Password', with: employee.password
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully.'
  end

end
