Feature:The User can enter a location

Scenario: Enter uncovered zipcode


 #   Then I see the "Skip"
    Then I wait for 2 seconds
When I touch the "Skip" button
    
    Then I see the "Zipcode screen"
    Then I touch the "Zipcode" button
    And I enter "an uncovered zipcode"
    Then I touch the "Go" button

    When I touch the "Email" button
    And I enter "an Email Address"
 #   Then I see the "Keep me Posted"
Then I wait for 5 seconds
    Then I touch the "Keep me Posted" button
    Then I see the "Zipcode screen"
