Feature: Pages

  Scenario: Open page from root page
    Given there is a page with the slug "hedgehog" create translation "en" with the name "Hotdog" with the content "he drank too many milk"
    When I am on the root page
    Then I should see "Projects"
    And I follow "Hotdog"
    Then I should see "he drank too many milk"
