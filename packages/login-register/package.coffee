Package.describe
  name: "shadesoflight:login-register",
  version: "0.0.1",
  summary: "",
  git: "",
  documentation: "README.md"

Package.onUse (api) ->
  api.versionsFrom "1.1.0.2"
  api.addFiles "login-register.coffee"

Package.onTest (api) ->
  api.use "tinytest"
  api.use "shadesoflight:login-register"
  api.addFiles "login-register-tests.js"
