['guest', 'customer', 'manager', 'admin'].each do |role|
  # User.roles do |role|
  Role.find_or_create_by({ name: role })
end

# TODO: Select roles ids once into variable
# Admin
User.create! do |u|
  u.email = 'admin@test.com'
  u.password = ENV['DEFAULT_ADMIN_PASSWORD']
  u.role = Role.find_by_name('admin')
end

# Manager
User.create! do |u|
  u.email = 'manager@test.com'
  u.password = ENV['DEFAULT_MANAGER_PASSWORD']
  u.role = Role.find_by_name('manager')
end
# Guests
User.create! do |u|
  u.email = "guest_#{Time.now.to_i}#{rand(99)}@test.com"
  u.password = ENV['DEFAULT_GUEST_PASSWORD']
  u.role = Role.find_by_name('guest')
end
User.create! do |u|
  u.email = "guest_#{Time.now.to_i}#{rand(99)}@test.com"
  u.password = ENV['DEFAULT_GUEST_PASSWORD']
  u.role = Role.find_by_name('guest')
end
# Registered
User.create! do |u|
  u.email = "customer_#{Time.now.to_i}#{rand(99)}@test.com"
  u.password = ENV['DEFAULT_GUEST_PASSWORD']
  u.role = Role.find_by_name('customer')
end
User.create! do |u|
  u.email = "customer_#{Time.now.to_i}#{rand(99)}@test.com"
  u.password = ENV['DEFAULT_GUEST_PASSWORD']
  u.role = Role.find_by_name('customer')
end
# Old registered users
(1..5).each { |i|
  User.create! do |u|
    u.email = "customer_old_#{i}_#{Time.now.to_i}#{rand(99)}@test.com"
    u.password = ENV['DEFAULT_GUEST_PASSWORD']
    u.role = Role.find_by_name('customer')
    u.created_at = "2015-#{rand(1..12)}-09 21:39:51.185187"
  end
}

(1..5).each do |cc_id|
  CourseCategory.create! do |cc|
    cc.name = "Category #{cc_id}"
    cc.description = "Category #{cc_id} description edited"
    # TODO: Find user_id by first admins id
    cc.user_id = 1
  end
end