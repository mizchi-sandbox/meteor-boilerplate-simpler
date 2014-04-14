Deps.autorun ->
  document.title = Session.get('sitetitle') or 'Meteor Boilerplate';

window.SiteTitle =
  set: (t) -> Session.set('sitetitle', t);
  get: -> Session.get('sitetitle');
  equals: -> Session.equals('sitetitle', v);
