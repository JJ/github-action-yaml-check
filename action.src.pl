#!/usr/bin/env perl

use v5.14;

use lib qw(lib);

# use Action qw(getRef);

my @files = @ARGV;

say "Files @files";

exit(1) unless @files;
