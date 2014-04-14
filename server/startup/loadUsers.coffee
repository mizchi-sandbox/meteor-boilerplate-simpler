loadUser = (user) ->
  userAlreadyExists = !!Meteor.users.findOne(username: user.username)
  unless userAlreadyExists then Accounts.createUser(user)

Meteor.startup ->
  users = YAML.eval(Assets.getText('users.yml'))
  for key, user of users
    loadUser user
