#!/usr/bin/perl -w

print ("Enter your credit card number:\n");

$userInput = <STDIN>;

$userInput =~ s/\s+//g;

$digit_len = length($userInput);

print("\nTesting CC: ", $userInput, " and length is ", $digit_len , "\n");

if(($digit_len == 13 or $digit_len == 16) and $userInput =~ m/^4{1}[\d]+/) {
    print("VALID VISA CARD");
} elsif(($digit_len == 16) and $userInput =~ m/^5[1-5][\d]+/) {
    print("VALID MASTER CARD");
} elsif(($digit_len == 16) and $userInput =~ m/^([6011]|[65])[\d]+/) {
    print("VALID DISCOVER CARD");
} elsif(($digit_len == 15) and $userInput =~ m/^(3[4|7])[\d]+/) {
    print("VALID AMERICAN EXPRESS CARD");
} else {
    print("INVALID CARD");
}