# DESCRIPTION

Installs [pdf2image](https://code.google.com/p/pdf2image/). PDF2Image is a conversion library specialized in converting PDF documents to images (png,jpeg,..) and exports text data in XML and JSON format.


# REQUIREMENTS

## Supported Platforms

The following platforms are supported by this cookbook, meaning that the recipes run on these platforms without error:

* Ubuntu

# RECIPES

* `pdf2image` - The default recipe.

# USAGE

This cookbook installs the pdf2image components if not present.

# ATTRIBUTES

* `node[:pdf2image][:version]`    default: "0.53"

## Basic Settings

None


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## License

**chef-pdf2image**

* Freely distributable and licensed under the [MIT license](http://phlipper.mit-license.org/2012/license.html).
* Copyright (c) 2012 Phil Cohen (github@phlippers.net) [![endorse](http://api.coderwall.com/phlipper/endorsecount.png)](http://coderwall.com/phlipper)
* http://phlippers.net/
