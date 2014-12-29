Feature:The User can enter a location

Scenario: Enter uncovered zipcode
    When I swipee right
    And I swipee right
    And I swipee right
Then I wait for 1 seconds
    Then I see the "Get started screen"
    Then I wait for 1 seconds

    When I touch the "Start" button
  Then I see the "Zipcode screen"
  Then I touch the "Zipcode" button
   And I enter "a covered zipcode"
  Then I touch the "Go" button
  Then I wait for 2 seconds
When I touch the "Got it" button
  Then I see the "New order screen"
  Then I wait for 2 seconds
