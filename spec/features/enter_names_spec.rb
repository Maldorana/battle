feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Mabon'
    fill_in :player_2_name, with: 'Sophie'
    click_button 'Submit'

    save_and_open_page

    expect(page).to have_content 'Mabon vs. Sophie'
  end
  scenario 'show player 2 hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Mabon'
    fill_in :player_2_name, with: 'Sophie'
    click_button 'Submit'

    save_and_open_page

    expect(page).to have_content 'Mabon vs. Sophie'
    expect(page).to have_content "Sophie: 60HP"
  end
end
