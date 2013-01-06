#
# Create initial Admin User
#
AdminUser.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')
