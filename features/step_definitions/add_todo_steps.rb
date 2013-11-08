When(/^I enter a todo$/) do
  @todo = Todo.make
  within ("div.todo_form") do
    fill_in "Name", :with => @todo.name 
    fill_in "Image URL", :with => @todo.image_url
    click_button "Create Todo"
  end
end

Then(/^the todo appears on the destination$/) do
  assert page.find("h3" , "Visit the Louvre")
end
