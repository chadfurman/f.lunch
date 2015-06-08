Template.register.events
  'click .create paper-button': (event, template) ->
    event.preventDefault
    to = template.find('#runEmail').value
    name = template.find('#runName').value
    message = template.find('#runMessage').value
    link = Random.id([9])
    html = Blaze.toHTML(Template.emailLayout)
    Meteor.call 'newRun', to, link, name, message, html
