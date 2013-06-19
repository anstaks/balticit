Feature: Pages

  Scenario: Open page from root page
    Given there is a page with the name "Drunk hedgehog" and the content "he drank too many milk"
    When I am on the root page
    Then I should see "Главная"
    And I follow "Drunk hedgehog"
    Then I should see "he drank too many milk"
