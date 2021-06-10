feature 'Enter names' do
  scenario 'Player can enter names and submit the form' do
    sign_in_and_play
    save_and_open_page('./snapshots')
    expect(page).to have_content('Ash VS Frank')
  end
end

feature 'View hit points' do
  scenario 'View player 2s hit points' do
    sign_in_and_play
    expect(page).to have_content('Frank: 100HP')
  end   
end

feature 'Attack another player' do 
  scenario 'Attack player 2 and get confirmation' do
    sign_in_and_play
    visit('/attack')
    expect(page).to have_content('Ash attacked Frank!')
  end
end