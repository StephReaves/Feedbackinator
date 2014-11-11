## Objectives

For this challenge, you'll be adding some new functionality to a very basic Sinatra+ActiveRecord application. The application in its current form includes:

- a `User` model
- a `Topic` model (representing a topic that a user might have)
- a `sign_in` view
- a `sign_up` view

### Part One: User Authentication

Create routes to allow a user to:

- Sign up as a new user
- Log in as an existing user
- Log out as an existing user

You should not store the user's plain text password in the database.

**If you're stuck on part one, please ask for help or move on. Do not spend the entire time period on authentication.**

### Part Two: Skills

Your task is to add the notion of "skills" to the application. A user can have many topics, and a topic can belong to many users. A "skill" is an association between `User`s and `Topic`s, and has the following additional *required* attributes:

- years of experience
- a flag tracking whether or not the user has formal education for the given topic

You need to build CRUD for the "skill" model you create. Keep in mind that a user should *only* be able to edit and add her own skills, not the skills of other users. A user should also be able to delete her skills, but not the skills of other users.

**If you're unsure about what this Part is asking you to build, please ask for help.**

### Part Three: Other Requirements

Also, the home page of your application should simply show each user, along with each of her topics, how many years experience she has with said topic, and whether or not she's been formally educated in that topic. For example:

<table>
  <tr>
    <th>Name</th><th>Topic</th><th>Years</th><th>Formal?</th>
  </tr>
  <tr class="new-user">
    <td>Marie Curie</td><td>Ruby</td><td>1</td><td>yes</td>
  </tr>
  <tr>
    <td></td><td>JavaScript</td><td>2</td><td>yes</td>
  </tr>
  <tr class="new-user">
    <td>Max Born</td><td>Illustrator</td><td>5</td><td>no</td>
  </tr>
  <tr>
    <td></td><td>CSS</td><td>3</td><td>no</td>
  </tr>
</table>

Reminder - users can view all other users' topics and skills; however, they can only create/edit/delete their own skills.

You can display this data however you choose - do not get hung up on the table formatting in the example. 

## Important
**Please run `rake db:drop` before you begin to flush any old databases**

## Useful Notes / Tidbits

- What's the [right kind of association](http://guides.rubyonrails.org/association_basics.html#the-has_many-through-association) between `User` and `Topic`?
- Validations on boolean fields [can be tricky](http://stackoverflow.com/questions/10506575/rails-database-defaults-and-model-validation-for-boolean-fields).
- Before implementing a manual way to add new skills for a user, you might try adding some through your [`db/seeds.rb`](./db/seeds.rb) file.
