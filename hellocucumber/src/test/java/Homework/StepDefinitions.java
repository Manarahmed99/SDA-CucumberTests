package Homework;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import java.util.concurrent.TimeUnit;

public class StepDefinitions {

    private WebDriver driver;

    @Given("user goes to the {string}")
    public void user_goes_to_the(String url) {
        driver = new ChromeDriver();
        driver.get(url);
    }

    @Then("user waits for {int} seconds")
    public void user_waits_for_seconds(Integer seconds) {
        driver.manage().timeouts().implicitlyWait(seconds, TimeUnit.SECONDS);
    }


    @And("verifies that the page title contains the word {string}")
    public void verifies_that_the_page_title_contains_the_word(String expectedTitle) {
        Assertions.assertTrue(driver.getTitle().contains(expectedTitle));
    }

    @And("closes the page")
    public void closes_the_page() {
        driver.quit();
    }
}
