require 'machinist/active_record'

Traveller.blueprint do
  first_name { "Dave" }
  last_name { "Jerk" }
  email { "Dave@jerk.com" }
  password { "password" }
  password_confirmation { "password" }
end

Destination.blueprint do
  name { "Paris" }
  image_url { "http://www.puretravel.com/blog/wp-content/uploads/2012/11/Arc-de-Triomphe-at-night-in-Paris-France.jpg" }
end

Todo.blueprint do
  name { "Visit the Louvre" }
  image_url { "http://lovingitup.files.wordpress.com/2011/12/louvre5.jpg" }
end