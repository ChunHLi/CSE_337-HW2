use strict;
use warnings;

print "sample input:\n";
my $str1 = <STDIN>;
chomp $str1;

my $fn = "q2.in";
my $ofn = "q2p2.out";
open(IN, '<', $fn) or die "Could not open file '$fn': $!";
open(OUT, '>', $ofn);

my $counter = 0;

print "sample q2p2.out:\n";

while(<IN>){
	my @spl = split ' ', $_;
	my $arrSize = @spl;
	if ($arrSize != $str1) {
		print $_;  
		print OUT $_ ; 
	} else {
		$counter += 1;
	}
}

if ($counter == 0) {
	print "Oooh Nooo!";
}
