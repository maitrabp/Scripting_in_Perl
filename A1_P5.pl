use warnings;
use strict;

my @tokens;

#FILES
open (FH0, '<', 'RobertFrost.txt') or die $!;
open(FH1, '>', 'RobertFrost2.txt') or die $!;
open(FH2, '>', 'RobertFrost3.txt') or die $!;

my $counter = 1;
my @poemArray;
#Read through file and number each line
while (<FH0>) {
  print FH1 $counter, ":\t", $_;
  push(@poemArray, $_);
  $counter++;
}
close(FH0);
close(FH1);

#Sort poem alphabetically
@poemArray = sort @poemArray;

$counter = 1; #reset the counter
#Output to file2
foreach my $lines (@poemArray) { 
    if($lines =~ /\n$/){
        print FH2 $counter, ":\t", $lines;
    } else {
         print FH2 $counter, ":\t", $lines, "\n";
    }
    $counter++;
}
close(FH2);