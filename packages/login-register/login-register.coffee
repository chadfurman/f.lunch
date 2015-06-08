Package.on_use (api) ->
    api.addFiles "main/client/main.html", "client"
    api.addFiles "main/client/main.coffee", "client"
    api.addFiles "main/server/main.coffee", "server"

    api.addFiles "login/client/login.html", "client"
    api.addFiles "login/client/login.coffee", "client"
    api.addFiles "login/server/login.coffee", "server"

    api.addFiles "register/client/register.html", "client"
    api.addFiles "register/client/register.coffee", "client"
    api.addFiles "register/server/register.coffee", "server"
