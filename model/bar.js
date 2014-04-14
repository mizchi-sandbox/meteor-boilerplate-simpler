Bar = new Meteor.Collection2('bar', { 'schema' : {} });

// Collection2 already does schema checking
// Add custom permission rules if needed
Bar.allow({
    insert : function () {
        return true;
    },
    update : function () {
        return true;
    },
    remove : function () {
        return true;
    }
});

