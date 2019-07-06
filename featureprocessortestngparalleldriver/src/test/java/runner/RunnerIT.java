package runner;

import cucumber.api.CucumberOptions;

@CucumberOptions(glue = "stepdef", features = "src/test/resources/feature")
public class RunnerIT extends AbstractTestNGCucumberParallelTests {

}
