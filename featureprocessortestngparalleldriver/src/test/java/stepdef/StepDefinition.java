package stepdef;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import driver.SharedDriver;
import io.cucumber.datatable.DataTable;
import pageobject.GoogleHomePO;
import pageobject.GoogleSearchPO;

public class StepDefinition {
	
	private GoogleHomePO ghPO;
	private GoogleSearchPO gsPO;
	
	public StepDefinition(SharedDriver driver, GoogleHomePO ghPO, GoogleSearchPO gsPO) {
		this.ghPO = ghPO;
		this.gsPO = gsPO;
	}
	
	@Given("Go to google page")
	public void given() {
		ghPO.get();
	}
	
	@When("Enter search {string}")
	public void when(String search) {
		gsPO = ghPO.performSearch(search);
		System.out.format("\nCount results for %s search is %d.\n", search, gsPO.searchResultCount());
	}
	
	@Given("Process given datatable")
	public void datatable(DataTable data) {
		System.out.println("Thread ID " + Thread.currentThread().getId());
		System.out.println(data);
		System.out.println("");
	}
	
	@Given("Do {string} when {string} and {string}")
	public void scenariooutline(String one, String two, String three) {
		System.out.println("Thread ID " + Thread.currentThread().getId());
		System.out.format("Do %s when %s and %s", one, two, three);
		System.out.println("");
		System.out.println("");
	}
}
