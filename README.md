# swp

swp is a minimal and sane web framework forked from [sw](https://github.com/jroimartin/sw),
using pandoc instead of a custom `md2html.awk` clunky script.

## Installation

### Dependencies

* `pandoc`: see install guide [pandoc.org/installing](https://pandoc.org/installing.html)

then run:
`make install PREFIX=/usr/local`

## Configuration
Copy swp.conf and style.css to your working directory, and edit them to fit your needs.

## Static web generation

Run from your working directory:
`swp /path/to/site`

Where 'site' is the folder where your website is located.
The static version of the website is created under 'site.static'.

## Automatic generation+upload

The whole process can be automatized if you create a Makefile like this in your working directory:
```make
all:
	swp /path/to/site
	rsync -avz site.static/ foo.org:/path/to/wwwroot/
clean:
	rm -rf site.static
```

## Author
* Nibble \<develsec.org\>
* rhighs \<rmontalti.com\>

## Contributors
* pancake \<nopcode.org\>
* Andrew Antle
