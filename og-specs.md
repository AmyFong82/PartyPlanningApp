# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project 
		(A) I am using the rails gem.

- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) 
		(A) Party has_many Tickets.

- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
		(A) Party belongs_to Category.

- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
		(A) User has_many Parties through Tickets, Parties has_many Users through Tickets.

- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
		(A) User has_many Parties through Tickets, Parties has_many Users through Tickets.

- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
		(A) User can submit ticket.num_of_attendees.
		
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
		(A) Validations to user and party models.

- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
	(A) Party.most_popular

- [x] Include signup
	(A) User can signup at "/signup"

- [x] Include login
	(A) User can login at '/login'

- [x] Include logout
	(A) User can logout
	
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
	(A) OmniAuth with GitHub

- [x] Include nested resource show or index (URL e.g. users/2/recipes)
	(A) nested resource show: users/1/parties/5

- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
	(A) nested resource "new" form: users/1/parties/new

- [x] Include form display of validation errors (form URL e.g. /recipes/new)
	(A) /users/new, /parties/new

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate