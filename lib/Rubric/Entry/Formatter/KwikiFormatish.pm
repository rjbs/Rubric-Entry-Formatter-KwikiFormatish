use strict;
use warnings;
package Rubric::Entry::Formatter::KwikiFormatish;
# ABSTRACT: format entries with AlmostKwikiText

=head1 DESCRIPTION

This formatter will use KwikiFormatish to format entries into HTML.

=cut

use Text::KwikiFormatish;

=head1 METHODS

=method as_html

=method as_text

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

1;
