# LiveScript-Rails

LiveScript adapter for the Rails asset pipeline. Also adds support to use LiveScript to respond to JavaScript requests (use .js.ls views).
This project is essentially a fork of `coffee-rails` adapted to compile LiveScript.

## Installation

Since Rails 3.1 Live-Rails is included in the default Gemfile when you create a new application. If you are upgrading to Rails 3.1 you must add the livescript-rails to your Gemfile:

    gem 'livescript-rails'

If you are precompiling your assets (with rake assets:precompile) before run your application in production, you might want add it to the assets group to prevent the gem being required in the production environment.

    group :assets do
      gem 'livescript-rails'
    end

### Prelude
LiveScript-Rails also includes prelude-ls (0.6).
Just use `//= require prelude` in your `application.js`.