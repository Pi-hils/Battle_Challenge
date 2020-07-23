require 'spec_helper'

feature 'To attack,' do
    scenario "Player 1 attacks Player 2" do
       sign_in_and_play
        click_button 'Attack'
      expect(page).to have_content ("Lulu attacks Zogo")
    end
  end