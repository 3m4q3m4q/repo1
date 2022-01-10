Description: My CDP Task2.1;

Scenario: Login as a user with trello account
Given I am on a page with the URL 'https://trello.com/'
When I click on element located `By.xpath(//a[@class='btn btn-sm btn-link text-primary'])`
And I enter `${username}` in field located `By.xpath(//input[@id='user'])`
And I click on element located `By.xpath(//input[@id='login'])`
And I enter `${password}` in field located `By.xpath(//input[@id='password'])`
And I click on element located `By.xpath(//button[@id='login-submit']//span[contains(text(),'Log in')])`
Then the page title is equal to 'Log in to continue - Log in with Atlassian account'

Scenario: Trello Board creation using API 
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?name=abcde#{randomInt(100,999)}&token=f812aff032e5a71ec97fc291be8076215114a1553a812c66a4f0ebc891726ebf&key=17d8b003407173006fff9da0d67b6dd0'
Then the response code is equal to '200'




