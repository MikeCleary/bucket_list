Given(/^that I'm signed in$/) do
  @dave = Traveller.make!
  visit new_traveller_session_path
  fill_in "Email", :with => @dave.email
  fill_in "Password", :with => @dave.password
  click_button "Sign in"
end

Given(/^I'm on the homepage$/) do
  visit pages_homepage_path
end

When(/^I enter a destination$/) do
  @destination = Destination.make
  within('div#form_for_destination') do
    fill_in "Name", :with => @destination.name
    fill_in "Image URL", :with => @destination.image_url
    click_button "Create Destination"
  end
end

Then(/^it appears on the page$/) do
  assert page.find("h2", "Paris")
  assert page.find("img")
end

