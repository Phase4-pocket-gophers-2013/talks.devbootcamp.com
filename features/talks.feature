Feature: Talks
  As a teacher
  I want to create and manage talks
  As a user 
  I want to view tals

Scenario: Creating Talk
  Given I am logged in as a teacher with email "jared@aol.com" and password "password"
  When I create a talk with title "kid president" and an embed code "<iframe width='560 height='315' src='http://www.youtube.com/embed/l-gQLqv9f4o' frameborder='0' allowfullscreen></iframe>"
  And I click "Create Talk"
  Then I should see the correct title of the talk
  And I should see the embed code

Scenario: Editing a talk
  Given I am logged in as a teacher with email "jared@aol.com" and password "password"
  When I visit a talk page I have created
  And I click Edit 
  And I change the title to "The President"
  And I click Save

Scenario: Deleting a talk 
  Given I am logged in as a teacher with email "jared@aol.com" and password "password"
  When I visit a talk page I have created
  And I click Delete 

Scenario: Viewing a talk
  Given I am logged in as a user with email "test@aol.com" and password "password"
  And I visit a talk page
  Then I should see the talk
  And I should see the title

