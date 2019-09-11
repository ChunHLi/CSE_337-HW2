use strict;
use warnings;

my @n = (0,0,0,0,0,0,0,0,0,0);
my $fn = "features.txt";
open(IN, '<', $fn) or die "Could not open file '$fn': $!";
while(<IN>){
	my @spl = split /[\s+,]/, $_;
	my $feature = $spl[-1] + 0;
	my $arrSize = @spl;
	$n[$feature] = $arrSize - 1;
}

for (my $i = 0; $i < 10; $i++) {0
	print "total_#_of_words_with_" . "$i:$n[$i]" . "\n";
}