# Test-Accuweather web site
Using cucumber.js with Selenium to test Accuweather Climate change tab

## Setup
   - Install [Node.js](https://nodejs.org/en/) (6 or higher) 

   - Install the following node modules with [npm](https://www.npmjs.com/) or [yarn](https://yarnpkg.com/en/)

     - [selenium-cucumber-js](https://www.npmjs.com/package/selenium-cucumber-js#installation)
  
     

## Add the following files
```Gherkin
#features/Test-cases.feature
Feature: Accuweather page navigation
   In order to open the Climate tab on Accuweather website
   As a user
   I want to see the Climate page

Scenario: Climate Change tab
   Given The user is on the Accuweather home page
   When The user clicks on the tab Climate
   Then The web page navigates to the Climate page 
```

```Javascript
//step-definitions/LandingPage.js
module.exports = function () {

    this.Given(/^The user is on the Accuweather home page$/, function () {
         helpers.loadPage('http://www.accuweather.com');

    });
    this.When(/^The user clicks on the tab Climate$/, function() {
      return helpers.getFirstElementContainingText("span", "Climate").then(function(element) {

      return element.click();
});
    });
    this.Then(/^The web page navigates to the Climate page$/, function() {
      return helpers.getFirstElementContainingText("h2", "The Global Climate Change Center").then(function(element){

          expect(element).to.not.equal(undefined);

          });
  });
};
```
## Run it with the following  command: 
```
node node_modules/selenium-cucumber-js/index.js -s ./step-definitions
```
