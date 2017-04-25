## Jacques

To get started:

- Add [ActiveModel Serializers](https://github.com/rails-api/active_model_serializers) to the Gemfile
- `bundle`
- `rails db:create`
- Generate away. Of note: Don't overwrite any test or factory files (it should prompt you as you go along)
  - If you goof this up, you can always `git checkout -- <filename>` to get back what was there before it was overwritten.

Path: Backend Engineering (Ruby on Rails) - January 2017  Unit: Week 5 - Welcome to Rails
He's back from vacation and the VC's have made some new feature demands. Also: Rails.

Description

Hi. I'm Jacques, a frontend developer working with you on the Notemeister 5000 application.


I have the frontend all laid to use your API. Here's what I'm expecting (note, these values are examples, they should be the values of the actual note):

```

GET /api/notes

{
  "notes" : [
    {
      "title" : "My awesome post",
      "body" : "My awesome body of a post",
      "created_at" : "<timestamp>",
      "updated_at" : "<timestamp>",
      "tags" : [
        { "name" : "awesome" },
        { "name" : "funny" },
        { "name" : "spiffy" }
      ],
      "user" : { "username" : "bugsy" }
    },
    {
      "title" : "My awesome second post",
      "body" : "My awesome body of a second post",
      "created_at" : "<timestamp>",
      "updated_at" : "<timestamp>",
      "tags" : [
        { "name" : "not_so_awesome" },
        { "name" : "not_funny" },
        { "name" : "not_at_all_spiffy" }
      ],
      "user" : null
    }
  ]
}
POST /api/notes -d {"title" : "My created post", "body" : "My created body", "tags" : "api, machine, first"}

{
  "note" : {
    "title" : "My created post",
    "body" : "My created body",
    "created_at" : "<timestamp>",
    "updated_at" : "<timestamp>",
    "tags" : [
      { "name" : "api" },
      { "name" : "machine" },
      { "name" : "first" }
    ],
    "user" : null
  }
}
```
If I try to create a note without a title or body, I should get back a JSON-formatted error message and a status code of 400

The error message format:

````


{"errors" : [ {"error" : "Something can't be blank"}, {"error" : "Some other thing can't be blank"} ]}

GET /api/notes/tag/funny

{
  "tag" : {
    "name" : "funny",
    "notes" : [
      {
        "title" : "My awesome post",
        "body" : "My awesome body of a post",
        "created_at" : "<timestamp>",
        "updated_at" : "<timestamp>",
        "tags" : [
          { "name" : "awesome" },
          { "name" : "funny" },
          { "name" : "spiffy" }
        ],
        "user" : {"username" : "frankfurter"}
      },
      {
        "title" : "My awesome second post",
        "body" : "My awesome body of a second post",
        "created_at" : "<timestamp>",
        "updated_at" : "<timestamp>",
        "tags" : [
          { "name" : "not_so_awesome" },
          { "name" : "funny" },
          { "name" : "not_at_all_spiffy" }
        ],
        "user" : null
      }
    ]
  }
}

```
I'd like to be able to create a simple user authenticatable and identifiable simply by an api_token. Something like: POST /api/users/create {"username" : "jello", "email" : "whatever@example.com", password: [REDACTED]}`
```

    {
      "user" : {
        "username" : "jello",
        "email" : "whatever@example.com",
        "api_token" : "<token>"
      }
    }
    
    ```
On later requests, if I include the apitoken parameter, the note belongs to that associated user. And if I make requests to get the list of notes with that apitoken, it should return just that user's notes.

No other representations of a user should include the api_token.

Deliverables

A fork of the the skeleton app in the organization account
A PR from the fork to the org repo with a green check provided by Travis CI.
The app deployed to Heroku. Said heroku link should be in the description field of the repository.
A link to your forked repo submitted to TIYO.
Requirements

Explorer Mode

Help Jacques out and create the API he needs now.
You'll know you have this complete when rake test is green and Travis CI gives you a checkmark.
Use ActiveModelSerializers for the above.
Ensure Jacques can access this API using CORS.

Adventure Mode

Jacques had a nice-to-have request.

I'd like to be able to edit notes. If we have a sense of users, a user should only be able to edit their own notes.

PUT /api/notes/:id -d {data}

Write your own tests for the above in test/integration/adventure_test.rb

Epic Mode

Notes should have comments. They should be included in the API response for notes#show but have their own create actions/controller
Additional resources

Active Model Serializers
