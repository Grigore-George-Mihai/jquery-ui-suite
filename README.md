# Jquery::Ui::Suite

`Jquery::Ui::Suite` is a gem that integrates jQuery UI v1.14.1 and jQuery v3.7.1 assets seamlessly into your Rails application. This gem allows you to configure the jQuery UI theme you want to use and includes the latest versions of jQuery and jQuery UI by default.

## Table of Contents

- [Installation](#installation)
- [Configuration](#configuration)
- [Usage](#usage)
- [Styles](#styles)
- [Contact](#contact)

## Installation

Add `jquery-ui-suite` to your Gemfile and run `bundle install`:

```ruby
gem 'jquery-ui-suite'
```

After installing, run the generator to create an initializer for configuring the gem:

```bash
rails generate jquery_ui_suite:install
```

## Configuration
The gem includes a configuration initializer located at config/initializers/jquery_ui_suite.rb, where you can customize the theme used for jQuery UI.

### Example Configuration
In config/initializers/jquery_ui_suite.rb, set your desired theme:

```ruby
Jquery::Ui::Suite.setup do |config|
  config.jquery_ui_theme = "base"
  config.include_jquery = true
end
```
Available themes include `base`, `black-tie`, `blitzer`, `cupertino`, `dark-hive`, `dot-luv`, `eggplant`, `excite-bike`, `flick`, `hot-sneaks`, `humanity`, 
`le-frog`, `mint-choc`, `overcast`, `pepper-grinder`, `redmond`, `smoothness`, `south-street`, `start`, `sunny`, `swanky-purse`, `trontastic`, `ui-darkness`, `ui-lightness` and `vader`.

## Usage
Import jQuery and jQuery UI
In your application's importmap.rb file, pin the JavaScript files:

```ruby
pin "jquery", to: "jquery-3.7.1.min.js", preload: true
pin "jquery-ui", to: "jquery-ui-1.14.1.min.js", preload: true
```

In app/javascript/application.js, import jQuery and jQuery UI:

```ruby
import "jquery"
import "jquery-ui"

// Make jQuery globally available
window.$ = window.jQuery = globalThis.jQuery
```

## Styles
In app/assets/stylesheets/application.scss, import the theme you selected in the initializer:

```scss
// Replace 'base' with your selected theme
@import "jquery-ui/themes/base/jquery-ui.min";
@import "jquery-ui/themes/base/theme";
```
Available themes include `base`, `black-tie`, `blitzer`, `cupertino`, `dark-hive`, `dot-luv`, `eggplant`, `excite-bike`, `flick`, `hot-sneaks`, `humanity`,
`le-frog`, `mint-choc`, `overcast`, `pepper-grinder`, `redmond`, `smoothness`, `south-street`, `start`, `sunny`, `swanky-purse`, `trontastic`, `ui-darkness`, `ui-lightness` and `vader`.


## Contributing
Contributions are welcome! Feel free to report bugs or submit pull requests.

## Contact

For questions or further information, feel free to reach out via [LinkedIn](https://www.linkedin.com/in/grigore-george-mihai-73981b86/).