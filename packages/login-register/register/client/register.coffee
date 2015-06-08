// Calling Email Method Locally
Template.register.events({
    'click .create paper-button': function(event, template){
        event.preventDefault();
        var to = template.find('#runEmail').value;
        var name = template.find('#runName').value;
        var message = template.find('#runMessage').value;
        var link = Random.id([9]);
        var html = Blaze.toHTML(Template.emailLayout);
        Meteor.call('newRun', to, link, name, message, html);
    }
});
