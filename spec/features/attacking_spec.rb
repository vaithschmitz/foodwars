feature "testing attacks" do 
  scenario "attacking p2 and receiving confirmation" do
    sign_in_and_play
    click_button('AttackP2')
    expect(page).to have_content('John attacked Dave!')
  end
end
