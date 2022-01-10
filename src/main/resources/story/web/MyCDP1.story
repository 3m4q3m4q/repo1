Description: My CDP Task1 C.Imdb.com;

Scenario: Login as a user with IMDb account
Given I am on a page with the URL 'http://imdb.com'
When I click on element located `By.xpath(//div[contains(text(),'Sign In')])`
And I click on element located `By.xpath(//span[normalize-space()='Sign in with IMDb'])`
And I enter `${username}` in field located `By.xpath(//input[@id='ap_email'])`
And I enter `${password}` in field located `By.xpath(//input[@id='ap_password'])`
And I click on element located `By.xpath(//input[@id='signInSubmit'])`
Then the page title is equal to 'IMDb: Ratings, Reviews, and Where to Watch the Best Movies & TV Shows'

Scenario: Perform search for movie by search box and open page for one of the found products
When I enter `The Green Mile Review` in field located `By.xpath(//input[@id='suggestion-search'])`
And I click on element located `By.xpath(//button[@id='suggestion-search-button']//*[name()='svg'])`
And I click on element located `By.xpath(//a[normalize-space()='The Green Mile Review'])`

Scenario: Add movie to Watchlist and Navigate to “Your Watchlist”
When I click on element located `By.xpath(//div[@class='ipc-btn__text'])`
And I click on element located `By.xpath(//a[@class='ipc-button ipc-button--single-padding ipc-button--center-align-content ipc-button--default-height ipc-button--core-baseAlt ipc-button--theme-baseAlt ipc-button--on-textPrimary ipc-text-button']//div[@class='ipc-button__text'])`
Then the text 'The Green Mile Review' exists

Scenario: Sort list from Your Watchlist and export it 
When I click on element located `By.xpath(//span[@class='lister-widget-sprite lister-sort ascending'])`
And I click on element located `By.xpath(//a[normalize-space()='Export this list'])`


