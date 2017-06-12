package log;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.UUID;

/**
 * Created by GongRui on 5/28/2017.
 */
public class LogTest {

    private final static Logger logger = LoggerFactory.getLogger(LogTest.class);

    public static void main(String[] args) {
        logger.info("out {}, {}", "one", "tow");
        logger.info("out {}, {}, {}, {}, {}", "one", "tow", "tow", "tow", "tow", "tow", "tow");
        logger.info("out {}, {}", "one", "tow");
//        LoggerFactory.getLogger("DB").info("test");
        logger.info("s");
        for(int i = 0;i <= 200;i++) {
            new Thread(() -> logger.info(UUID.randomUUID().toString())).start();
        }
    }
}
