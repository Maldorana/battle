feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play

    expect(page).to have_content 'Mabon vs. Sophie'
  end
  scenario 'show player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Mabon vs. Sophie'
    expect(page).to have_content "Sophie: 60HP"
  end
  scenario 'player 1 attacks player 2 with confirmation' do
    sign_in_and_play
    save_and_open_page
    click_button 'Attack'
    expect(page).to have_content "Mabon attacked Sophie"
  end
end
