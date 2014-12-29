Feature:The User can enter a location

Scenario: Enter covered zipcode
  Then I wait for 2 seconds
  Then I see the "Skip"
  When I touch the "Skip" button
  Then I see the "Zipcode screen"
  Then I touch the "Zipcode" button
   And I enter "a covered zipcode"
  Then I touch the "Go" button
  Then I wait for 2 seconds
  When I touch the "Got it" button
  Then I see the "New order screen"
  Then I wait for 2 seconds


Scenario: Enter uncovered zipcode

   Then I wait for 2 seconds
   Then I see the "Skip"
   When I touch the "Skip" button
   Then I see the "Zipcode screen"
   Then I touch the "Zipcode" button
   And I enter "an uncovered zipcode"
   Then I touch the "Go" button
   Then I wait for 2 seconds
    When I touch the "Email" button
    And I enter "an Email Address"
    Then I see the "Keep me Posted"
    Then I touch the "Keep me Posted" button
    Then I see the "Zipcode screen"
