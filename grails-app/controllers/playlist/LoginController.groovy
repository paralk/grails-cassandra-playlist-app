package playlist


class LoginController {
    static allowedMethods = [login: "POST"]

    def index() {
    }

    def login(String username, String password, String button) {
        if ("login".equals(button)) {
            doLogin(username, password)
        } else if ("newAccount".equals(button)) {
            doCreateUser(username, password)
        }
    }

    private doLogin(String username, String password) {

        if (!username) {
            render (view: "index", model: [error: "Username Can Not Be Blank"])
            return
        }
        User user = User.findByUsername(params.username)
        if (user == null || !user.password.contentEquals(password)) {
            render (view: "index", model: [error: "Username or Password is Invalid"])
            return
        }
        session.user = user
        redirect (controller: "playlist")
    }

    private void doCreateUser(String username, String password)  {

        if (username.isEmpty()) {
            render (view: "index", model: [error: "Username Can Not Be Blank"])
            return
        }

        // Add the user.  If it's successful, create a login session for it
        //StatisticsDAO.increment_counter("users");

        User user = new User(username: username, password: password)
        if (!user.add()) {
            render (view: "index", model: [error: "User Already Exists"])
            return
        }

        // Create the user's login session so this application recognizes the user as having logged in
        session.user = user
        redirect (controller: "playlist")
    }
}
