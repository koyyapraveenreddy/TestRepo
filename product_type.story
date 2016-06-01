Narrative:
In order to maintain a list of Product Types
As an authenticated user
I want to be able to create a new product type, and update and delete existing product types

Scenario: view Product Type page
Given Product types page
Then Page title should be Hierarchy Management

Scenario: Successful creation of Product Type
Given Product types page
When Product type name FunTestProductName1 is entered
And Non-existing product type code 912 is entered
And Begin Date 12/12/2030 is entered
And End Date 12/12/2060 is entered
Then Add button should be enabled
When Add button is clicked
Then Alert message Product Type has been added successfully should be displayed
Then Product type with product type code 912 should be added to the Product Types list

Scenario: Failed Creation of Product Type: Product type name is too short
Given Product types page
When Product type name TN is entered
Then Error message Minimum length required is 3 should be displayed
And Add button should be disabled

Scenario: Failed Creation of Product Type: Product type code is too long
Given Product types page
When Non-existing product type code 1234 is entered
Then Error message Maximum length is 3 should be displayed
And Add button should be disabled

Scenario: Failed Creation of Product Type: Product type code already exists
Given Product types page
When Product type name FunTestProductName1 is entered
And Existing product type code 912 is entered
And Begin Date 12/12/2030 is entered
And End Date 12/12/2060 is entered
And Add button is clicked
Then Error message Code already exists. should be displayed
And Add button should be disabled

Scenario: Failed Creation of Product Type: Product type code already exists with no end date
Given Product types page
When Product type name FunTestProductName1 is entered
And Existing product type code 912 is entered
And Begin Date 12/12/2030 is entered
And Add button is clicked
Then Alert message Error creating Program Type. Please try again later. should be displayed

Scenario: Failed Creation of Product Type: End date is before begin date
Given Product types page
When End Date 12/12/2016 is entered
And Begin Date 12/12/2030 is entered
Then Error message End date should be after Begin date should be displayed

Scenario: Successful Update of Product Type
Given Product types page
When Product type with product type code 912 is clicked
Then Product type Form should be populated with product type with Product type code 912
And Update button should be enabled
When Product type name UpdatedFunTestProductName is entered
And Update button is clicked
Then Alert message Product Type has been updated successfully should be displayed
Then Product type name of product type with code 912 should be updated to UpdatedFunTestProductName

Scenario: Inability to update product type code
Given Product types page
When Product type with product type code 912 is clicked
Then Product type Form should be populated with product type with Product type code 912
And Update button should be enabled
And Product type code input should be disabled

Scenario: Reset Form
Given Product types page
When Product type with product type code 912 is clicked
Then Reset Form button should be enabled
When Reset Form button is clicked
Then Form should be cleared

Scenario: Successful Deletion of Product Type
Given Product types page
When Product type with product type code 912 is clicked
Then Product type Form should be populated with product type with Product type code 912
And Delete button should be enabled
When Delete button is clicked
Then Alert message Product Type has been deleted successfully should be displayed
And Product type with product type code 912 should be deleted from Product Types list


Scenario: Failed Creation of Product Type: Please select Product Type
Given Product types page
When Product type name FunTestProductName1 is entered
Then Add button should be enabled
When Add button is clicked
Then Error message Please select Product Type should be displayed
And Add button should be disabled

Scenario:  Failed Creation of Product Type: Date should be greater than or equal to today's date
Given Product types page
When Product type name FunTestProductName1 is entered
And Existing product type code 912 is entered
And Begin Date 12/12/2015 is entered
And End Date 12/12/2030 is entered
Then Add button should be enabled
When Add button is clicked
Then Error message Date should be greater than or equal to today's date should be displayed
And Add button should be disabled

Scenario:  Failed Creation of Product Type: End date should be greater than Begin date Date should be greater than or equal to today's date
Given Product types page
When Product type name FunTestProductName1 is entered
And Existing product type code 912 is entered
And Begin Date 12/12/2015 is entered
And End Date 12/12/2030 is entered
Then Add button should be enabled
When Add button is clicked
Then Error message End date should be greater than Begin date Date should be greater than or equal to today's date should be displayed
And Add button should be disabled

Scenario:  Failed Creation of Product Type: general validations 1
Given Product types page
When Product type name FunTestProductName1 is entered
Then Add button should be enabled
When Add button is clicked
Then Error message Please enter product type code and Pleaase Enter the Begin date should be displayed
And Add button should be disabled

Scenario:  Failed Creation of Product Type: general validations 2
Given Product types page
When Existing product type code 912 is entered
Then Add button should be enabled
When Add button is clicked
Then Error message Please enter Product type name and Pleaase Enter the Begin date should be displayed
And Add button should be disabled

Scenario:  Failed Creation of Product Type: general validations 3
Given Product types page
When Begin Date 12/12/2015 is entered
Then Add button should be enabled
When Add button is clicked
Then Error message Please enter Product type name and Pleaase Enter the product type code should be displayed
And Add button should be disabled
