#!/usr/bin/env perl

use v5.14;

use lib qw(lib);

# use Action qw(getRef);

my @files = @ARGV;

for my $file (@files ) {
  my $parseOutput = `yq eval $file`;
  say $parseOutput;
}

exit(1) unless @files;
