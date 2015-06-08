Template.login.events
  'click #sign-in #login': (e) ->
    $form = $('#sign-in')

    if $form[0][0].value
      email = $form.find('#email').val()
      password = $form.find('#password').val()

      Meteor.loginWithPassword email, password, (error) ->
        if error
          alert 'Failed'
        else
          Router.go 'home'