require "spec_helper"

feature 'players' do

   scenario "create a new user" do
       visit('/')
        within('form') do
        fill_in :player_1_name, with: 'Lulu'
        fill_in :player_2_name, with: 'Zogo'
         # click_button 'Create user'
         # expect(page).to have_content "Lulu vs. Zogo"
     end
     click_button 'Submit'
     expect(page).to have_content ("Zogo: 40HP")
   end
 
 end