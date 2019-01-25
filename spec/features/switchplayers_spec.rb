feature "switch" do
  scenario "switch players after attack" do
    attack
    click_button('Attack')
    expect(page).to have_content('90', '90')
  end
end