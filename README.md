# TOLL TRACKER
# Full Stack Project (Project 2)
[link to front-end repo](https://github.com/ccasner/full-stack-application)

## Project Idea


An app that allows you to check what the price of a MassPike toll costs in each location. Since the booths were recently removed, drivers are no longer told how much they will be paying per toll. Anyone that drives on the MassPike could use it, especially commuters. Each account could have the option of storing previous charges and informing the user how much they spend per month/week/year etc. Many Bostonians are constantly complaining about not knowing how much they are paying for each toll, so this could be a good solution to this problem and also could be useful for reporting travel expenses to employers.


## User Stories

A commuter driving to and from work so they can budget their travel expenses.
A MA visitor who wants to know how much their trip will cost.
An employee looking to report travel expenses for a specific day of travel.


## What the back-end needs

A resource for the tolls which will include price and exit name.
A resource for users to store login information.
A resource for the user's charge history.

## Entity Relationship Diagram

[link to ERD](https://imgur.com/a/cv0qf)

## Development Process

I started building the API by scaffolding the 'Charges' resource so that each user would be able to create their own table to track the tolls they paid. I restricted the access to the user that owns the table by setting a belongs to/has many relationship. Each table would be empty by default with the option to add charges if desired. I created a one-to-many relationship by adding the user ID to the charges resource.

I then created a 'Tolls' resource where I loaded all the information about each exit location and price. I used a seed file to add the data to the tolls resource and made it available for users to read the information but it could only be updated by those with access to the database.

Once the restrictions were set, I was ready to move on to the front-end development.


## Routing

The API has full CRUD capabilities so that the user can create a resource upon logging in, read the contents of that resource, update the contents, and delete them if necessary.


## Technologies Used

Ruby
Ruby on Rails


## 3rd Party APIs

Once my API was working properly, I added a thrid party API through Google Maps that has markers where each toll grantry is located.
