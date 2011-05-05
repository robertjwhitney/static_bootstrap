STRAP 'EM UP!
=============================

Static Bootstrap is a nanoc site with 

* Support for Haml3/Sass3
* Some useful helpers from the Nanoc Fuel gem
* Nutils, and yui-compressor for js compression  
* CSS is minified using the built in Sass output format.
* The smusher gem is included (see below for usage)

It also has a growing library of assets aside from that, to help speed up development.

Usage
------------

    bundle install

Create your magical site.

    bundle exec nanoc3 compile

Using smusher to optimize images:

    bundle exec smusher output/img

See https://github.com/grosser/smusher for other options.


Fin.