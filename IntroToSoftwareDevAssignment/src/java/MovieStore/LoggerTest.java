package MovieStore;

import com.sun.istack.internal.logging.*;
import java.io.IOException;
import java.util.logging.FileHandler;
import java.util.logging.Level;
import java.util.logging.SimpleFormatter;

public class LoggerTest {
    private final static Logger logger = Logger.getLogger(LoggerTest.class.getName(), null);
    private static FileHandler fh = null;

    public static void init() {
        try {
            fh = new FileHandler("loggerExample.log", false);
        } catch (SecurityException | IOException e) {
            e.printStackTrace();
        }
        Logger l = Logger.getLogger("", null);
        fh.setFormatter(new SimpleFormatter());
         l.addHandler(fh);
        l.setLevel(Level.CONFIG);
    }
}