feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    save_and_open_page

    expect(page).to have_content 'Mabon vs. Sophie'
  end
  scenario 'show player 2 hit points' do
    sign_in_and_play
    save_and_open_page
    expect(page).to have_content 'Mabon vs. Sophie'
    expect(page).to have_content "Sophie: 60HP"
  end
end
