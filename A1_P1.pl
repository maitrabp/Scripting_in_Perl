#!/usr/bin/perl -w

print ("Test type:\n");

$userInput = <STDIN>;

print("YOU ENTERED: ", $userInput);

if($userInput =~ /[-+]?[0-9]*\.?[0-9]*/) {
    print("VALID PATTERN!");
}
else
{
    print("INVALID PATTERN!");
}