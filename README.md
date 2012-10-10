Bound Volume Case Extractor
===========================

Simple script to extract cases from supremecourt.gov bound volume PDFs using pdftk

Given `Bound Volume.pdf` and `pages.yml`, spits out PDFs like `502 U.S. 1.pdf` with just the relevant pages.

Prerequisites
-------------

- [PDF Toolkit (pdftk)](http://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/)
- [Ruby](http://www.ruby-lang.org)


Usage
-----

    ruby extractor.rb pages.yml Bound\ Volume.pdf
