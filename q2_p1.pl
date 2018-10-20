use strict;
use warnings;

print "sample input:\n";
my $str1 = <STDIN>;
chomp $str1;
my $str2 = <STDIN>;
chomp $str2;
print "\n";

my $fn = "q2.in";
my $ofn = "q2p1.out";
open(IN, '<', $fn) or die "Could not open file '$fn': $!";
open(OUT, '>', $ofn);

while(<IN>){
	$_ =~ s/$str1/$str2/g;
	print OUT $_;
}

print "sample 'q2p1.out':\n";
