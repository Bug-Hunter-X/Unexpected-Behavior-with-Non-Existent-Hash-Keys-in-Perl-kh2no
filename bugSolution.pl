my %hash = ( a => 1, b => 2, c => 3 );
my $key = 'd';
if ( exists $hash{$key} ) {
  print "Key '$key' exists\n";
  my $value = $hash{$key};
  print "Value of '$key': $value\n";
} else {
  print "Key '$key' does not exist\n";
  my $value = 'default'; #Provide a default value
  print "Value of '$key': $value\n";
}

#Alternative using the // operator for a more concise solution
my $value2 = $hash{$key} // 'default';
print "Value of '$key' with default: $value2\n";