require 'rails_helper'

RSpec.describe Product, type: :model do

  describe "the signin process", :type => :feature do
    before :each do
      admin = Admin(username: 'teste', password: '123456789')
      admin.save
    end

    it "CT_001" do
      visit '/admins/sign_in'
      within("#new_admin") do
        fill_in 'admin[username]', with: 'teste'
        fill_in 'admin[password]', with: '123456789'
      end
      click_button 'Entrar'
      expect(page).to have_content 'sucesso'
    end
  end

  describe "the product maintaining process", :type => :feature do
    before :each do
      admin = Admin(username: 'teste', password: '123456789')
      admin.save
      login_as(admin, :scope => :user, :run_callbacks => false)
    end

    it "CT_002" do
      visit '/products/new'
      within("#new_product") do
        fill_in 'product[name]', with: 'teste'
        fill_in 'product[category_id]', with: '1'
        click_button '.custom-file-input'
      end
      click_button 'Entrar'
      expect(page).to have_content 'sucesso'
    end
  end

end
