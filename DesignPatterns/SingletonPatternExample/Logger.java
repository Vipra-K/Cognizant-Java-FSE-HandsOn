public class Logger {
    private static Logger instance;

    private Logger() {
        System.out.println("Logger Instance Created");
    }

    // I am using synchronized so that only one thread can access this method at a
    // time. It avoids bottlenecks when multiple threads try to access the
    // getInstance() method.
    public static synchronized Logger getInstance() {
        if (instance == null) {
            instance = new Logger();
        }

        return instance;
    }

    public void log(String message) {
        System.out.println("Log: " + message);
    }

}