print("Enter an integer: ");

my $n = <STDIN>;

print("ENTERED: ", $n);

$sum = 0;
foreach $value (split //, $n) {
  $value = $value*$value*$value;
  $sum+=$value;
}
print("RESULT: ", $sum)