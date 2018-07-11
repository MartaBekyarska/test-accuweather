 #Feature: Accuweather searching

#Scenario: Simple Accuweather search
  #Given The user is on the Accuweather page
  #When The search phrase "Ruse" is entered
  #Then The results for "Ruse" are shown
  #And The following related results are shown

#Examples:    | related                   |
             #| Ruse, Bulgaria            |
             #| Ruse, New South Wales, AU |
             #| Ruse, Ruse, Slovenie      |
             #| Ruse, Chhattisgarh, IN    |


Feature: Accuweather page navigation

Scenario: Climate Change tab
 Given The user is on the Accuweather home page
 When The user clicks on the tab Climate
 Then The web site navigates to the Climate page
