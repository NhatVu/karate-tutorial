import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class TestRunner {

    @Test
    public void testParallel() {
        System.out.println("print test parallel");
        Results results = Runner.path("classpath:features")
                //.outputCucumberJson(true)
//                .tags("@current")
                .parallel(1);
        Assertions.assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
