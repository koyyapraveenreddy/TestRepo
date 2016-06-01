Narrative:
In order to maintain a list of Point Segments
As an authenticated user
I want to be able to create a new point segment, and update and delete existing point segments

Scenario: view Point Segment page
Given Point segment page
Then Page title should be Hierarchy Management

Scenario: Successful creation of Point Segment
Given Point segment page
When Point segment name FTPS1 is entered
And Non-existing point segment code 123 is entered
And Begin Date 12/12/2030 is entered
And End Date 12/12/2060 is entered
Then Add button should be enabled
When Add button is clicked
Then Alert message Point Segment has been added successfully should be displayed
Then Point segment with point segment code 123 should be added to the Point Segment list

Scenario: Successful Update of Point Segment
Given Point segment page
When Point segment with point segment type code 123 is clicked
Then Point segment Form should be populated with point segment with Point segment code 123
And Update button should be enabled
When Point segment name FTPS1_UPD is entered
And Update button is clicked
Then Alert message Point Segment has been updated successfully should be displayed
Then Point segment name of point segment with code 123 should be updated to FTPS1_UPD

Scenario: Reset full Form
Given Point segment page
When Point segment with point segment type code 123 is clicked
Then Reset Form button should be enabled
When Reset Form button is clicked
Then Form should be cleared

Scenario: Failed Creation of Point Segment: Point segment code already exists
Given Point segment page
When Point segment name FTPS1_UPD is entered
And Existing point segment code 123 is entered
And Begin Date 12/12/2030 is entered
And End Date 12/12/2060 is entered
And Add button is clicked
Then Alert message Point segment code already exists should be displayed

Scenario: Successful Deletion of Point Segment
Given Point segment page
When Point segment with point segment type code 123 is clicked
Then Point segment Form should be populated with point segment with Point segment code 123
And Delete button should be enabled
When Delete button is clicked
Then Alert message Point Segment has been Deleted successfully should be displayed
And Point segment with point segment code 123 should be deleted from Point Segment list

Scenario:  Failed Creation of Point Segment: Date should be greater than or equal to today's date
Given Point segment page
When Point segment name TEST3 is entered
And Non-existing point segment code 534 is entered
And Begin Date 12/12/2015 is entered
And End Date 12/12/2030 is entered
Then Add button should be enabled
When Add button is clicked
Then Error message Date should be greater than or equal to today's date should be displayed
And Add button should be disabled

Scenario:  Failed Creation of Point Segment: Please enter point segment name
Given Point segment page
When Non-existing point segment code 534 is entered
And Begin Date 12/12/2016 is entered
Then Add button should be enabled
When Add button is clicked
Then Error message  Please enter point segment name should be displayed
And Add button should be disabled

Scenario:  Failed Creation of Point Segment: general validations 1
Given Point segment page
When Non-existing point segment code 534 is entered
Then Add button should be enabled
When Add button is clicked
Then Error message Please enter point segment name and Pleaase Enter the Begin date should be displayed
And Add button should be disabled

Scenario:  Failed Creation of Point Segment: general validations 2
Given Point segment page
When Point segment name TEST3 is entered
Then Add button should be enabled
When Add button is clicked
Then Error message Please enter point segment code and Pleaase Enter the Begin date should be displayed
And Add button should be disabled

Scenario:  Failed Creation of Point Segment: general validations 3
Given Point segment page
When Begin Date 12/12/2015 is entered
Then Add button should be enabled
When Add button is clicked
Then Error message Please enter point segment code and Pleaase Enter the segment name should be displayed
And Add button should be disabled

Scenario:  Failed Creation of Point Segment: Please enter point segment code
Given Point segment page
When Point segment name TEST3 is entered
And Begin Date 12/12/2016 is entered
Then Add button should be enabled
When Add button is clicked
Then Error message Please enter point segment code should be displayed
And Add button should be disabled

Scenario:  Failed Creation of Point Segment: Please select begin date
Given Point segment page
When Point segment name TEST3 is entered
And Non-existing point segment code 534 is entered
Then Add button should be enabled
When Add button is clicked
Then Error message Please select begin date should be displayed
And Add button should be disabled

Scenario:  Failed Creation of Point Segment: End date should be greater than Begin date Date should be greater than or equal to today's date
Given Point segment page
When Point segment name TEST4 is entered
And Non-existing point segment code 434 is entered
And Begin Date 12/12/2016 is entered
And End Date 12/11/2015 is entered
Then Add button should be enabled
When Add button is clicked
Then Error message End date should be greater than Begin date Date should be greater than or equal to today's date should be displayed
And Add button should be disabled

