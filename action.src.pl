#!/usr/bin/env perl

use v5.14;

use lib qw(lib);

use GitHub::Actions qw(error_on_file);

my @files = @ARGV;

for my $file (@files ) {
  my $errorOutput = `yq eval $file 2>&1 1>/dev/null`;
  if ( $errorOutput ne "" ) {
    my ($line, $error) = $errorOutput =~ /line\s+(\d+)\:\s+(.+)/;
    error_on_file( "Error en el fichero YAML", $file, $line, $error );
  }
}

