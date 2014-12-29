Feature:The User can enter a location

Scenario: Enter uncovered zipcode
Then I wait for 2 seconds
     Then I see the "Skip"
     When I touch the "Skip" button

 
  Then I see the "Zipcode screen"
  Then I touch the "Zipcode" button
   And I enter "a covered zipcode"
  Then I touch the "Go" button
When I touch the "Got it" button
  Then I see the "New order screen"
  Then I wait for 2 seconds
