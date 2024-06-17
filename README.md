# FirebaseVerifier

This gem will decrypt the `accessToken` provided by Firebase.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add firebase-verifier

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install firebase-verifier

## Usage

To use it on your rails project:
```ruby
firebase_project_id = "<FIREBASE_PROJECT_ID>"
firebase_verifier = FirebaseVerifier.new(firebase_project_id)
decoded_token = firebase_verifier.decode(token)
email = decoded_token["email"]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Deployment

Build the gem:

    $ gem build firebase-verifier.gemspec

Deploy the gem:

    $ gem push firebase-verifier-0.1.0.gem

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kuru-studio/firebase-verifier.
