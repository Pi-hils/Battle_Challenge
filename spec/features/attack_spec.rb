require 'spec_helper'

feature 'To_attack,' do
    scenario "Player 1 attacks Player 2" do
      sign_in_and_play
      click_button 'ATTACK'
      expect(page).to have_content "Lulu attacked Zogo"
    end

    scenario 'reduce Player 2 HP by 10 points' do
      sign_in_and_play
      click_button 'ATTACK'
      expect(page).not_to have_content 'Zogo: 40HP'
      expect(page).to have_content 'Zogo: 50 HP'
    end
  end
