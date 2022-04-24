require 'rails_helper'

RSpec.describe 'CRUD operatiopns on kudo', type: :system do
  let(:employee) { create :employee }

  before do
    visit root_path
    fill_in 'Email', with: employee.email
    fill_in 'Password', with: employee.password
    click_button 'Log in'
  end

  it 'manage kudo' do
    employee1 = create :employee
    expect(page).to have_content 'Kudos'

    click_link 'New Kudo'
    fill_in 'Title', with: 'Factory Kudo'
    fill_in 'Content', with: 'For testing purposes'
    select employee1.email, from: 'kudo[receiver_id]'
    click_button 'Create Kudo'
    expect(page).to have_content 'Kudo was successfully created.'

    click_link 'Edit'
    fill_in 'Title', with: 'Factory Kudo Updated'
    fill_in 'Content', with: 'Updated content with capybara'
    click_button 'Update Kudo'
    expect(page).to have_content 'Kudo was successfully updated.'

    visit root_path
    click_link 'Destroy'
    expect(page).to have_content 'Kudo was successfully destroyed.'
    expect(page).to have_http_status(:ok)
  end
end
