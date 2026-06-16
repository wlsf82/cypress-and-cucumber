Feature: Cookies consent banner

  Scenario: consents to the cookies policies
    Given I access the EngageSphare app without any cookies set
    And I see the cookies consent banner
    When I click the Accept button
    Then the cookies banner is closed
    And the cookieConsent cookie is set with the value accepted

  Scenario: declines to the cookies policies
    Given I access the EngageSphare app without any cookies set
    And I see the cookies consent banner
    When I click the Decline button
    Then the cookies banner is closed
    And the cookieConsent cookie is set with the value declined
