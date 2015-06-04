ApplicationController = RouteController.extend
    layoutTemplate: 'ApplicationLayout',
    onBeforeAction:  () ->
        if !Meteor.user()
            Router.go "login"

Router.configure
  autoRender: false
  autoStart: false
  progressSpinner: false

# Public Routes
@PublicController = RouteController.extend
  layoutTemplate: "main"

Router.route "/",
  name: "home"
  controller: ApplicationContrller

Router.route "/login",
  name: "login"
  controller: ApplicationContrller

Router.route "/register",
  name: "register"
  controller: ApplicationContrller
