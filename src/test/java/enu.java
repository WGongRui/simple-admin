import org.junit.Test;
import xinqi.ren.simpleadmin.cache.CacheEnum;
import xinqi.ren.simpleadmin.utils.PropUtils;

import java.io.IOException;
import java.util.Arrays;

/**
 * Created by GongRui on 5/30/2017.
 */
public class enu {

    public static void main(String[] args) {
        Arrays.asList(CacheEnum.values()).
                stream().
                forEach(e ->
                        System.out.println(e.getName())
                );

    }

    @Test
    public void testProp() throws IOException {
        PropUtils.init();
        System.out.println(PropUtils.getValue("simple_func"));
    }
}
