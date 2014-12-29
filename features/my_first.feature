Feature:The User can enter a location




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
    Then I wait for 2 seconds
    Then I touch the "Keep me Posted" button
    Then I see the "Zipcode screen"
