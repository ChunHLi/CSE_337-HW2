# q1_subroutines.pl
# helper for q1

use strict;
use warnings;
# use Data::Dumper;

sub parse_csv {
	my $filename = $_[0];
	open(my $fh, '<', $filename) or die "Could not open file '$filename': $!";
	my %hash;
	my $firstline = <$fh>;
	while(my $line = <$fh>){
		chomp $line;
		(my $id, my $name, my $country, my $year) = split /,/, $line;
		$hash{$id} = [$name, $country, $year + 0];
	}
	close $fh;
	return %hash;
}

1; # need to end with a true value;

# my $fn = 'collections.csv';
# my %collections = parse_csv($fn);
# print Dumper(\%collections);