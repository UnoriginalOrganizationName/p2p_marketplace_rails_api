# p2p_marketplace_scaffold_rails
A scaffold/skeleton app for a peer-to-peer (p2p) marketplace made in Ruby on Rails

## How does this work?

This is a basic CRUD app using Rails and Postgres to help create a p2p marketplace.
The app uses a specific way of organizing a database that then allows for p2p transactions between two users.

## Database

The database is organized in four primary tables: 
- users
- listings
- requests
- transactions

The general flow of the app goes as such:
An user will post a listing to the public -> another user will create a request for that listing -> if the owner of the listing accepts the request, a transaction is created with the information of the request and listing. 

What allows this to be p2p between two users is that a transaction will then be able to reference the user id's of the two transacting parties through the listing and request that it relies on.

Check out the [database ERD](https://lucid.app/lucidchart/eeaf3daf-3399-4edf-9092-bfa24d77edae/edit?invitationId=inv_6bd58c5d-0dd0-4338-990e-ef84bdcebe50#) for more information.


## How to use

Please fork this repo for your own project.

### Initialize the application

```
git clone https://github.com/{your_username}/p2p_marketplace_scaffold_rails.git
cd p2p_marketplace_rails/

bundle install

rails db:create
rails db:migrate

rails s
```

Then you're good to go!


## How to Contribute

Checkout out [contributing guidelines](CONTRIBUTING.md).

## Code of Conduct

All contributors must follow the [code of conduct](CODE_OF_CONDUCT.md).