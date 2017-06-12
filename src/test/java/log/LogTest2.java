package log;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.UUID;

/**
 * Created by GongRui on 5/30/2017.
 */
public class LogTest2 {

    private static final Logger logger = LoggerFactory.getLogger(LogTest2.class);

    @Test
    public void testLog() {
        logger.info("Begin");
        for(int i = 0;i <= 200;i++) {
            new Thread(() -> logger.info(UUID.randomUUID().toString())).start();
        }
    }

    @Test
    public void testThrad() {
        StackTraceElement[] elements = Thread.currentThread().getStackTrace();
        for(StackTraceElement m : elements) {
            logger.info("Class: {}, Line: {}, Method: {}, File: {}", m.getClassName(), m.getLineNumber(), m.getMethodName(), m.getFileName());
        }
    }
}