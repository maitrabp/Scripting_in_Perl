#!/usr/bin/perl
use warnings;
use strict;

my @tokens;

#FILES
open (my $inputFile, '<', 'IJCA_reviewer_list.txt') or die $!;
open(FH, '>', 'output.txt') or die $!;

#Read through file and store tokens as words
while (<$inputFile>) {
  push(@tokens,split /\s+/);
}

close ($inputFile);

my $counter = 1; #line
my @emails; #to store .edu emails

#Go through tokens
foreach my $word (@tokens) { 
    #Filter .edu emails only and store them into another list
    if($word =~ /.edu$/){
        push(@emails, $word);
    }
}
#Sorting email reverse alphabetically (ASCII)
@emails = reverse sort @emails;

#Output to file
foreach my $email (@emails) { 
    print FH $counter, ":\t", $email, "\n";
    $counter++;
}
close (FH);