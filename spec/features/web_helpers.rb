def sign_in_and_play
  visit('/')
  fill_in('p1name', with: 'John')
  fill_in('p2name', with: 'Dave')
  click_button('Submit')
end
