my %hash = ( a => 1, b => 2, c => 3 );
my $key = 'd';
if ( exists $hash{$key} ) {
  print "Key '$key' exists\n";
} else {
  print "Key '$key' does not exist\n";
  #This will not execute because the key 'd' does not exist.
}

my $value = $hash{$key}; #This will cause a warning if key is not found, but it will not throw an exception.
print "Value of '$key': $value\n"; #This will print undef if the key is not found.

my $value2 = $hash{$key} // 'default'; #This will return the default value 'default' if the key is not found. This is a better way to handle undefined keys.
print "Value of '$key' with default: $value2\n";