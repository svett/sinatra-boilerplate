# Sinatra Boilerplate
A boilerplate template for sinatra applications

# Getting started

```sh
$ git clone https://github.com/svett/sinatra-boilerplate
$ bundle install
```

# Development

The boilerplace template is based on MVC (Model-View-Controller) architecture.

The `controllers` directory contains all controllers.
```rb
# app/controllers/example_controller.rb
class ExampleController < ApplicationController
  get '/' do
    'Example!'
  end

  get '/index' do
    @current_user = "Frank Sinatra"
    erb :example
  end
end
```

In order to register a route for a new controller you should modify the
`config.ru`:

```rb
# config.ru
# ...
map('/example') { run ExampleController }
```

```rb
```

The `views` contains the each view associated with the controller:

```erb
# app/views/example.erb
<!DOCTYPE html>
<html>
  <head>
    <title>Sinatra & Sorcery</title>
  </head>
  <body>
    Hello, <%= @current_user %>
  </body>
</html>
```

The `helpers` directory contains all helpers that facilitate a common
operations. By default `sinatra` servers the static files from the `public`
directory.

```sh
├── Gemfile
├── Gemfile.lock
├── LICENSE
├── README.md
├── Rakefile
├── app
│   ├── controllers
│   │   ├── application_controller.rb
│   │   └── example_controller.rb
│   ├── helpers
│   │   └── application_helper.rb
│   └── views
│       └── example.erb
├── config.ru
├── public
└── spec
    ├── controllers
    ├── helpers
    ├── spec_helper.rb
    └── views
```

Running the test:

```sh
$ rake spec
```

**MIT License**
