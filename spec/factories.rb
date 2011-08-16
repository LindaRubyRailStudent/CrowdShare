Factory.define :user do |user|
  user.name                   "factory example name"
  user.email                  "factory@factory.com"
  user.password               "foobar"
  user.password_confirmation  "foobar"
end