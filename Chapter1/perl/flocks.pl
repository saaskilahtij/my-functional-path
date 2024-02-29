#!/usr/bin/perl

use strict;
use warnings;
use List::Util qw(max);

sub conjoin {
  my ($flock_x, $flock_y) = @_;
  return $flock_x + $flock_y;
}

sub breed {
  my ($flock_x, $flock_y) = @_;
  return $flock_x * $flock_y;
}

sub raid_flock {
  my ($flock_x, $flock_y) = @_;
  my $new_flock_y = List::Util::max(0, $flock_y - 1);
  my $new_flock_x = $flock_x - 1;
  return [$new_flock_x, 0];
}

my ($flock_x, $flock_y) = @{raid_flock(5, 7)};
print "Result: [$flock_x, $flock_y]\n";