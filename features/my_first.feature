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
    And I enter "an uncovered zipcode"
    Then I touch the "Go" button

    When I touch the "Email" button
    And I enter "an Email Address"
    Then I see the "Keep me Posted"
    Then I touch the "Keep me Posted" button
    Then I see the "Zipcode screen"
