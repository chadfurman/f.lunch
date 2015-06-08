if Meteor.isServer
  Meteor.startup ->
    // ** Setup customer.io email for automation
    // Setting Mail Server Envirnonment
    process.env.MAIL_URL="smtp://postmaster@sandbox8d20ea80bc064e46972ebf28519f4878.mailgun.org:a7eca4393d76154f0b9fa0d55f6cba4a@smtp.mailgun.org:465/";

    // methods
    Meteor.methods
      newRun: (to, link, name, message, html) ->
        // verify email params
        check to, String
        check link, String
        check name, String
        check message, String
        check html, String

        dispatchEmail = ->
          Email.send
            from: name,
            to: to,
            subject: "#{name} Has Created A New Lunch Run",
            html: html

        // Asynchronously dispatch email
        Meteor.setTimeout dispatchEmail, 0
