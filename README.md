# Twitter typeahead.js jquery plugin

This asset gem packages the [twitter typeahead.js](https://github.com/twitter/typeahead.js) **v0.10.4** jquery plugin for the Rails asset pipeline.

To learn more about typeahead.js read the post [Twitter's engineering blog](http://engineering.twitter.com/2013/02/twitter-typeaheadjs-you-autocomplete-me.html).

This gem includes the standard and minified versions of the assets.

## Installation

Add this line to your application's Gemfile:

    gem 'twitter-typeahead-rails'

or

    gem 'twitter-typeahead-rails', :git => "git://github.com/yourabi/twitter-typeahead-rails.git"


And then execute:

    $ bundle

Or install it yourself as:

    $ gem install twitter-typeahead-rails

## Configuration

### Javascript

To start using the twitter typeahead.js plugin in your rails app enable it via the asset pipeline (app/assets/javascripts/application.js).

Add one of the following to your application.js manifest:

Standard version
```js
//= require twitter/typeahead
```

Minified version : 
```js
//= require twitter/typeahead.min
```

### Css

You can use a css example via the asset pipeline (app/assets/stylesheets/application.css) :
```css
*= require twitter-typeahead-rails
```


## Usage

```js
// Twitter typeahead example.

// instantiate the bloodhound suggestion engine
var numbers = new Bloodhound({
  datumTokenizer: Bloodhound.tokenizers.obj.whitespace('num'),
  queryTokenizer: Bloodhound.tokenizers.whitespace,
  local: [
    { num: 'one' },
    { num: 'two' },
    { num: 'three' },
    { num: 'four' },
    { num: 'five' },
    { num: 'six' },
    { num: 'seven' },
    { num: 'eight' },
    { num: 'nine' },
    { num: 'ten' }
  ]
});

// initialize the bloodhound suggestion engine
numbers.initialize();

// instantiate the typeahead UI
$('.example-numbers .typeahead').typeahead(null, {
  displayKey: 'num',
  source: numbers.ttAdapter()
});
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

