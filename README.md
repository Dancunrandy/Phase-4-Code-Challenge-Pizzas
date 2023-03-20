# Pizza Ordering App Back-End
This is the back-end for a pizza ordering application, built with Ruby on Rails.

## Ruby version
This application is built with Ruby version 3.0.1.

### System dependencies
This application has the following system dependencies:

* Ruby version 3.0.1
* Rails version 6.1.3
* SQLite3 version 3.28.0
### Configuration
To set up this application, follow these steps:

1. Clone the repository: git clone https://github.com/dancunrandy/Phase-4-Code-Challenge-Pizzas.git
2. Navigate into the project directory: cd Phase-4-Code-Challenge-Pizzas
3. Install gem dependencies: bundle install
4. Set up the database: rails db:setup
### Database creation
This application uses SQLite3 for the database. To create the database, 
run the following command:rails db:create

### Database initialization
To initialize the database, run the following command:rails db:migrate

### Deployment instructions
The application is not currently configured for deployment to a production environment. If you wish to deploy the application, additional steps such as configuring a production database and setting up a production server will be required.

### Endpoints
The application exposes the following endpoints:

#### Pizzas
* GET /pizzas - returns a list of all pizzas
* GET /pizzas/:id - returns details of a specific pizza
* POST /pizzas - creates a new pizza
* PATCH /pizzas/:id - updates an existing pizza
* DELETE /pizzas/:id - deletes an existing pizza
#### Restaurants
* GET /restaurants - returns a list of all restaurants
* GET /restaurants/:id - returns details of a specific restaurant
* POST /restaurants - creates a new restaurant
* PATCH /restaurants/:id - updates an existing restaurant
* DELETE /restaurants/:id - deletes an existing restaurant
#### Restaurant Pizzas
* GET /restaurant_pizzas - returns a list of all restaurant pizzas
* GET /restaurant_pizzas/:id - returns details of a specific restaurant pizza
* POST /restaurant_pizzas - creates a new restaurant pizza
* PATCH /restaurant_pizzas/:id - updates an existing restaurant pizza
* DELETE /restaurant_pizzas/:id - deletes an existing restaurant pizza
## License
The application is available as open source under the terms of the MIT License.




