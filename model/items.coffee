@Items = new Meteor.Collection('items')
@Items.allow
  insert: (userId, item) ->
    false
