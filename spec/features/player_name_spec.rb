require 'spec_helper'

#start a fight by entering our names and seeing them


feature 'players' do

   scenario "create a new user" do
      #  visit('/')
      #  within('form') do
        sign_in_and_play
      #  fill_in :player_1_name, with: 'Lulu'
      #  fill_in :player_2_name, with: 'Zogo'
    # end
    # click_button 'Submit'
    expect(page).to have_content ("Lulu vs. Zogo")
  end
end

