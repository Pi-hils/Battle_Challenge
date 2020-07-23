require 'spec_helper'

#start a fight by entering our names and seeing them


feature 'players' do

   scenario "create a new user" do
        sign_in_and_play

    expect(page).to have_content ("Lulu vs. Zogo")
  end
end

