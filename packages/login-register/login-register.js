Package.on_use(function (api) {
    api.addFiles("main/client/main.html", "client");
    api.addFiles("main/client/main.js", "client");
    api.addFiles("main/server/main.js", "server");

    api.addFiles("login/client/login.html", "client");
    api.addFiles("login/client/login.js", "client");
    api.addFiles("login/server/login.js", "server");

    api.addFiles("register/client/register.html", "client");
    api.addFiles("register/client/register.js", "client");
    api.addFiles("register/server/register.js", "server");
});
