feature "Testing player input" do 
  scenario "Expect page to have input field for names" do
    visit('/')
    expect(page).to have_field(:type => 'text')
  end
  scenario "Expect to redirect to /names after player input" do
    visit('/')
    click_button('Submit')
    expect(current_path).to eq('/play')
  end
end

feature "Player Health" do 
  scenario "Show p2 health" do
    visit('/')
    expect(page).to have_field(:type => 'text')
  end
  scenario "Expect to redirect to /names after player input" do
    visit('/')
    click_button('Submit')
    expect(current_path).to eq('/play')
  end
end