use strict;
use warnings;
use File::Spec;

my $dirname = "features";
mkdir $dirname, 0755;

my $fn_0 = 'features/0-features.txt';
my $fn_1 = 'features/1-features.txt';
my $fn_2 = 'features/2-features.txt';
my $fn_3 = 'features/3-features.txt';
my $fn_4 = 'features/4-features.txt';
my $fn_5 = 'features/5-features.txt';
my $fn_6 = 'features/6-features.txt';
my $fn_7 = 'features/7-features.txt';
my $fn_8 = 'features/8-features.txt';
my $fn_9 = 'features/9-features.txt';

my @fn_s = ($fn_0, $fn_1, $fn_2, $fn_3, $fn_4, $fn_5, $fn_6, $fn_7, $fn_8, $fn_9);

open(my $f_0, '>', $fn_0) or die "Could not open file";
open(my $f_1, '>', $fn_1) or die "Could not open file";
open(my $f_2, '>', $fn_2) or die "Could not open file";
open(my $f_3, '>', $fn_3) or die "Could not open file";
open(my $f_4, '>', $fn_4) or die "Could not open file";
open(my $f_5, '>', $fn_5) or die "Could not open file";
open(my $f_6, '>', $fn_6) or die "Could not open file";
open(my $f_7, '>', $fn_7) or die "Could not open file";
open(my $f_8, '>', $fn_8) or die "Could not open file";
open(my $f_9, '>', $fn_9) or die "Could not open file";

my @f_s = ($f_0, $f_1, $f_2, $f_3, $f_4, $f_5, $f_6, $f_7, $f_8, $f_9);

my $fn = "features.txt";
open(IN, '<', $fn) or die "Could not open file '$fn': $!";

while(<IN>){
	my @spl = split /[\s+,]/, $_;
	my $num_feature = pop(@spl) + 0;
	my $str = join(' ', @spl) . "\n";
	print { $f_s[$num_feature] } $str;
}

print "Files have been created!\n";
for (my $i = 0; $i < 10; $i++) {
	
	print File::Spec->rel2abs($fn_s[$i]) . "\n";
}