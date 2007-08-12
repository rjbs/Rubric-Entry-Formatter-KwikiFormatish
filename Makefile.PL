use strict;
use warnings;

use inc::Module::Install;

name          ('Rubric-Entry-Formatter-KwikiFormatish');
author        ('Ricardo SIGNES <rjbs@cpan.org>');
license       ('perl');
version_from  ('lib/Rubric/Entry/Formatter/KwikiFormatish.pm');

requires('Rubric'               => 0.13_02);
requires('Text::KwikiFormatish' => '1.10');

WriteAll();
