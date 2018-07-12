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
