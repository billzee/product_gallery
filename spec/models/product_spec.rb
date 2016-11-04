require 'rails_helper'

RSpec.describe Product, type: :model do

  describe "the signin process", :type => :feature do
    before :each do
      Admin.create(username: 'teste', password: '123456789')
    end

    it "signs me in" do
      visit '/admins/sign_in'
      within("#new_admin") do
        fill_in 'admin[username]', with: 'teste'
        fill_in 'admin[password]', with: '123456789'
      end
      click_button 'Entrar'
      expect(page).to have_content 'sucesso'
    end
  end

end
