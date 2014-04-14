@Items = new Meteor.Collection('items')
@Items.allow
  insert: (userId, item) -> true
  remove: (userId, item) -> true
  update: (userId, item) -> true

