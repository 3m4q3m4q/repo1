Description: My CDP Task2.2;

Scenario: Login as a user with trello account
Given I am on a page with the URL 'https://trello.com/'
When I click on element located `By.xpath(//a[@class='btn btn-sm btn-link text-primary'])`
And I enter `${username}` in field located `By.xpath(//input[@id='user'])`
And I click on element located `By.xpath(//input[@id='login'])`
And I enter `${password}` in field located `By.xpath(//input[@id='password'])`
And I click on element located `By.xpath(//button[@id='login-submit']//span[contains(text(),'Log in')])`
Then the page title is equal to 'Log in to continue - Log in with Atlassian account'

Scenario: Verify user Profile
Given I am on a page with the URL 'https://https://trello.com/katek86/boards'
When I click on element located `By.xpath(//*[@data-test-id="header-member-menu-button"])`
Then the text 'Kate K' exists
Then the text 'k32111263@gmail.com' exists





