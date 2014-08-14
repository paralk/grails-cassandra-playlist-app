class BootStrap {

    def init = { servletContext ->
        servletContext.genres = ['classic pop and rock','classical','dance and electronica','folk','hip-hop','jazz and blues','metal','pop','punk','soul and reggae']
        servletContext.letters = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
    }
    def destroy = {
    }
}
