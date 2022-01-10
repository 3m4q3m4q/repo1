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

Scenario: Visual check1
Given I am on a page with the URL 'https://trello.com/katek86/boards'
When I wait until element located `By.xpath(//span[normalize-space()='Highlights'])` appears
When I click on element located `By.xpath(//span[normalize-space()='Highlights'])`
When I wait until element located `By.xpath(//div[@class='_3eof_03jdS2QAg _28uzf5fwemgxom _3M1_NyFgE9sVvK'])` appears
When I change context to element located `By.xpath(//div[@class='_3eof_03jdS2QAg _28uzf5fwemgxom _3M1_NyFgE9sVvK'])`
When I compare against baseline with `1`


Scenario: Visual check2
Given I am on a page with the URL 'https://trello.com/katek86/boards'
When I wait until element located `By.xpath(//*[@data-test-id="templates"]/descendant::span[text()="Templates"])` appears
When I click on element located `By.xpath(//*[@data-test-id="templates"]/descendant::span[text()="Templates"])`
When I wait until element located `By.xpath(//*[@class="all-boards"]/descendant::a[@title]/descendant::img[@alt="Business Icon"])` appears
When I change context to element located `By.xpath(//*[@class="all-boards"]/descendant::a[@title]/descendant::img[@alt="Business Icon"])`
When I compare against baseline with `2`



