require "spec_helper"

feature 'players' do

   scenario "create a new user" do
    sign_in_and_play
     expect(page).to have_content ("Zogo: 60 HP")
   end

 end
