use 5.008;
use strict;
use warnings;

package Dist::Zilla::Plugin::SynopsisTests;
BEGIN {
  $Dist::Zilla::Plugin::SynopsisTests::VERSION = '1.101420';
}
# ABSTRACT: Release tests for synopses
use Moose;
extends 'Dist::Zilla::Plugin::InlineFiles';

__PACKAGE__->meta->make_immutable;
no Moose;
1;




=pod

=head1 NAME

Dist::Zilla::Plugin::SynopsisTests - Release tests for synopses

=head1 VERSION

version 1.101420

=head1 SYNOPSIS

In C<dist.ini>:

    [SynopsisTests]

=head1 DESCRIPTION

This is an extension of L<Dist::Zilla::Plugin::InlineFiles>, providing the
following file:

  xt/release/synopsis.t - a standard Test::Synopsis test

=for test_synopsis 1;
__END__

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests through the web interface at
L<http://rt.cpan.org/Public/Dist/Display.html?Name=Dist-Zilla-Plugin-SynopsisTests>.

=head1 AVAILABILITY

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit L<http://www.perl.com/CPAN/> to find a CPAN
site near you, or see
L<http://search.cpan.org/dist/Dist-Zilla-Plugin-SynopsisTests/>.

The development version lives at
L<http://github.com/hanekomu/Dist-Zilla-Plugin-SynopsisTests/>.
Instead of sending patches, please fork this project using the standard git
and github infrastructure.

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
