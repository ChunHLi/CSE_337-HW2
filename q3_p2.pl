use strict;
use warnings;
use Data::Dumper;

my %revenue;
my @k = ("jan","feb","mar","apr","may","jun","jul","aug","sep","oct","nov","dec");
my @v = qw(1 2 3 4 5 6 7 8 9 10 11 12);
my %month;
@month{@k} = @v;
$revenue{"1"} = 4840;
$revenue{"2"} = 4340;
$revenue{"3"} = 3900;
$revenue{"4"} = 4330;
$revenue{"5"} = 3090;
$revenue{"6"} = 3660;
$revenue{"7"} = 3520;
$revenue{"8"} = 3280;
$revenue{"9"} = 4130;
$revenue{"10"} = 3690;
$revenue{"11"} = 4260;
$revenue{"12"} = 4800;

my $init_bool = 1;
my $init_month = "";
while ($init_bool){
	
	print "Enter the initial month: ";
	$init_month = <STDIN>;
	chomp($init_month);
	my $init_month = lc($init_month);
	foreach my $key (keys %month) {
		if ($init_month eq $key) {
			$init_bool = 0;
		}
	}
	if ($init_bool == 1) {
		print "Please enter only the three initials letters of a valid month.\n";
	}
}

my $end_bool = 1;
my $end_month = "";
while ($end_bool){
	
	print "Enter the end month: ";
	$end_month = <STDIN>;
	chomp($end_month);
	my $end_month = lc($end_month);
	foreach my $key (keys %month) {
		if ($end_month eq $key) {
			$end_bool = 0;
		}
	}
	if ($end_bool == 1) {
		print "Please enter only the three initials letters of a valid month.\n";
	}
}

my $rev = 0;

print "The cumalative revenue is: ";
my $start = $month{$init_month};
my $end = $month{$end_month};
if ($start == $end) {
	print "$rev";
}

if ($start < $end) {
	for (my $count = $start; $count <= $end; $count++) {
		$rev += $revenue{"$count"};
	}
	print "$rev";
} 
else {
	my $next = $start + 1;
	print($revenue{"$start"} + $revenue{"$next"});
}