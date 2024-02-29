#!/usr/bin/perl

# Naming here should be more descriptive, but I'm following the book's example
# raid_flock is a hard thing to name, but it's a good example of a function that does more than one thing which is a nono.

use strict;
use warnings;

# Add
sub conjoin {
  my ($flock_x, $flock_y) = @_;
  return $flock_x + $flock_y;
}

# Multiply
sub breed {
  my ($flock_x, $flock_y) = @_;
  return $flock_x * $flock_y;
}

# Hard thing to name.
sub raid_flock {
  my ($flock_x, $flock_y) = @_;
  my new_flock_y = $flock_y;
  my $new_flock_x = $flock_x + $new_flock_y - 1;
  return [$new_flock_x, 0];
}

my $flock_x = 4;
my $flock_y = 2;

my $result = raid_flock(breed($flock_x, conjoin($flock_x, $flock_y)), breed($flock_x, $flock_y));
print "Result: [@{$result}]\n";