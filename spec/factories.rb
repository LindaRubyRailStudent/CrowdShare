Factory.define :user do |user|
  user.name                   "factory example name"
  user.email                  "example@factory.com"
  user.password               "foobar"
  user.password_confirmation  "foobar"
end