name             "pdf2image"
maintainer       "Phil Cohen"
maintainer_email "github@phlippers.net"
license          "MIT"
description      "pdf2image tools"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          "1.0.0"

recipe "pdf2image", "Default recipe for installing pdf2image from source"

supports "ubuntu"
depends  "xpdf"

attribute "pdf2image/version",
  :display_name => "Version number",
  :description  => "The version of pdf2image to install",
  :default      => "0.53"
