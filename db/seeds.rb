Destination.destroy_all
Todo.destroy_all
Traveller.destroy_all

@dave = Traveller.create(
  :first_name => "Dave",
  :last_name => "Christian",
  :email => "DaveTheChristian@gmail.com",
  :password => "password",
  :password_confirmation => "password"
  )

@peru = Destination.create(
  :name => "Peru",
  :image_url => "http://cdni.condenast.co.uk/646x430/o_r/peru_cnt_9nov09_istock_b.jpg",
  :traveller_id => @dave.id
  )

Todo.create(
  :name => "Pet a capybara",
  :image_url => "http://realanimalslife.com/data_images/capybara/capybara-11.jpg",
  :traveller_id => @dave.id,
  :destination_id => @peru.id
  )
