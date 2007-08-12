package Rubric::Entry::Formatter::KwikiFormatish;
our $VERSION = '0.551';

=head1 NAME

Rubric::Entry::Formatter::KwikiFormatish - format entries with AlmostKwikiText

=head1 VERSION

 $Id: KwikiFormatish.pm 1165 2006-12-08 13:38:34Z rjbs $

=head1 DESCRIPTION

This formatter will use KwikiFormatish to format entries into HTML.

=cut

use strict;
use warnings;

use Text::KwikiFormatish;

=head1 METHODS

=head2 C< as_html >

=head2 C< as_text >

=cut

sub as_html {
  my ($class, $arg, $config) = @_;
  $config ||= {};
  return Text::KwikiFormatish::format($arg->{text}, %$config);
}

sub as_text {
  my ($class, $arg) = @_;

  return $arg->{text};
}

=head1 TODO

=head1 AUTHOR

Ricardo SIGNES, C<< <rjbs@cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-rubric@rt.cpan.org>, or
through the web interface at L<http://rt.cpan.org>. I will be notified, and
then you'll automatically be notified of progress on your bug as I make
changes.

=head1 COPYRIGHT

Copyright 2005 Ricardo SIGNES.  This program is free software;  you can
redistribute it and/or modify it under the same terms as Perl itself.

=cut

1;
