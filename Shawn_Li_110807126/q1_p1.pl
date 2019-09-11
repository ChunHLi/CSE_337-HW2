require "./q1_subroutines.pl";

use strict;
use warnings;
print "Sample input:\n";
my $country = <STDIN>;
chomp $country;
my $fn = 'collections.csv';
my %collections = parse_csv($fn);
my $counter = 0;
foreach my $val (values %collections) {
	if (@$val[1] eq $country) { $counter += 1; };}
print "Sample output:\n";print $counter . "\n";