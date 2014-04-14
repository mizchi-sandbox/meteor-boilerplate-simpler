loadFixture = (fixtures, collection) ->
  for fixture in fixtures
    Meteor.call(collection._name + '_insert', fixture);

Meteor.startup ->
