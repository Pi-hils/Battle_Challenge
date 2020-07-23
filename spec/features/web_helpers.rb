require 'spec_helper.rb'


def sign_in_and_play
    visit('/')
       within('form') do
       fill_in :player_1_name, with: 'Lulu'
       fill_in :player_2_name, with: 'Zogo'
    end
    click_button "Submit"
end
