Feature:The User can enter a location
  If entered ZipCode is not covered, an information page is displayed
  If entered ZipCode is covered, new order page is displayed


 
   Scenario: Enter uncovered zipcode

    When I swipee right
   
Then I wait for 1 seconds
   


     When I touch the "Skip" button
    Then I see the "Zipcode screen"
    Then I touch the "Zipcode" button
    And I enter "an uncovered zipcode"
    Then I touch the "Go" button

    When I touch the "Email" button
    And I enter "an Email Address"
   # Then I see the "Keep me Posted"
   Then I wait for 3 seconds
    Then I touch the "Keep me Posted" button
    Then I see the "Zipcode screen"

  
