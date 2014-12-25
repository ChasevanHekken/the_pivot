require 'rails_helper'

describe 'Iteration 1 User Interactions', type: :feature do

  context 'a registered user' do
    let(:user) { FactoryGirl.create(:user) }
    before(:each) do
      visit root_path
      fill_in 'Username', with: user.username
      fill_in 'Password', with: user.password
      click_button 'Log In'
    end

    context 'can register as a borrower' do
      it 'and is assigned a business page' do
        tenant_count = Tenant.count
        visit '/new'
        expect(page).to have_content('Apply to Become a Borrower!')
        fill_in 'Business Name', with: 'Aperture Labs'
        click_button 'Apply'
        expect(page).to have_content('Thanks for creating your store') 
      end
    end
  end
end