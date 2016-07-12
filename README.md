# perl6-profiler-html
Generate the HTML profile used by rakudo's --profile 

This file is currently hardcoded here:

https://github.com/perl6/nqp/blob/master/src/vm/moar/profiler/template.html

Having this broken out as a project allows us to:

* simplify maintenance
* switch to a new technology
* generate a minified file

As we generate new versions, we can snapshot them into the NQP page.
