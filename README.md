#flux-rails


A simple gem that wraps up Facebook's [Flux](https://github.com/facebook/flux) dispatcher and [Node](http://nodejs.org/)'s events module.

## What is flux?

`Flux`, according to its authors and maintainers, is defined as:
> An application architecture for React utilizing a unidirectional data flow.

To find out more about Flux, first read the blog post announcing Flux: ["An Application Architecture for React"](http://facebook.github.io/react/blog/2014/05/06/flux.html).

Then read more about the [Flux architecture](http://facebook.github.io/react/docs/flux-overview.html) and dive into Flux's [TodoMVC tutorial](http://facebook.github.io/react/docs/flux-todo-list.html).  

Going further, please take a look at an in-depth examination of [action creators and the dispatcher](http://facebook.github.io/react/blog/2014/07/30/flux-actions-and-the-dispatcher.html), written by Flux's developers and maintainers.

## Installation

Add this line to your application's Gemfile:

    gem 'flux-rails', github: 'KurtRMueller/flux-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install flux-rails

*Note: Currently, this gem isn't published to RubyGems. That will change in the near future.*


## Usage

One of this gem's dependencies is [`sprockets-commonjs`](https://github.com/maccman/sprockets-commonjs), which adds `CommonJS` support to Sprockets. This gem specificies that `.module` must be appended to any javascript file you want to use with CommonJs.

You can access the Flux dispatcher and Node's `EventEmitter` by requiring the following files in your Rails' `application.js`:

```
//= require Flux.module
//= require events.module

var Dispatcher = require('path/to/directory/Flux').Dispatcher;
var EventEmitter = require('path/to/directory/events').EventEmitter
```

Additionally, to get the most mileage out of this gem, you should use it in conjunction with [`react-rails`](https://github.com/reactjs/react-rails). 

*Note:* This gem doesn't include any of React's add-on tools, like [`copyProperties`](https://github.com/facebook/flux/blob/master/examples/flux-todomvc/js/dispatcher/AppDispatcher.js) or [`merge`](https://github.com/facebook/flux/blob/master/examples/flux-todomvc/js/stores/TodoStore.js).


## Contributing

1. Fork it ( https://github.com/KurtRMueller/flux-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
