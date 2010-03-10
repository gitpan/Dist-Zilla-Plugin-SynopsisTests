use 5.008;
use strict;
use warnings;

package Dist::Zilla::Plugin::SynopsisTests;
our $VERSION = '1.100700';
# ABSTRACT: release tests for synopses
use Moose;
use Test::Synopsis;
extends 'Dist::Zilla::Plugin::InlineFiles';

__PACKAGE__->meta->make_immutable;
no Moose;
1;




=pod

=head1 NAME

Dist::Zilla::Plugin::SynopsisTests - release tests for synopses

=head1 VERSION

version 1.100700

=head1 SYNOPSIS

In C<dist.ini>:

    [SynopsisTests]

=head1 DESCRIPTION

This is an extension of L<Dist::Zilla::Plugin::InlineFiles>, providing the
following files

  xt/release/synopsis.t - a standard Test::Synopsis test

=for test_synopsis 1;
__END__

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 AUTHOR

  Marcel Gruenauer <marcel@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Marcel Gruenauer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__DATA__
___[ xt/release/synopsis.t ]___
#!perl

use Test::More;

eval "use Test::Synopsis";
plan skip_all => "Test::Synopsis required for testing synopses"
  if $@;
all_synopsis_ok('lib');
