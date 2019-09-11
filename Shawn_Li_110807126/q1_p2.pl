require "./q1_subroutines.pl";
use strict;
use warnings;

my $oldest = 10000000;
my $youngest = -1;
my $oldID = -1;
my $youngID = -1;
my $fn = 'collections.csv';
my %collections = parse_csv($fn);
while(my($k,$v) = each %collections) {
	if (@$v[2] < $oldest){
		$oldID = $k;
		$oldest = @$v[2];	}
	if (@$v[2] > $youngest){
		$youngID = $k;
		$youngest = @$v[2];
	}}
print "Sample output:\n";
print $oldID . "\n";
print $youngID . "\n";