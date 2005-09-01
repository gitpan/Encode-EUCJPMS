#
# $Id: EUCJPMS.pm 3 2005-09-01 02:25:37Z naruse $
#
package Encode::EUCJPMS;
our $VERSION = "0.01";
 
use Encode;
use XSLoader;
XSLoader::load(__PACKAGE__,$VERSION);

Encode::define_alias(qr/\beuc-?jp-?ms$/i =>  '"eucJP-ms"');
Encode::define_alias(qr/\beuc-?jp-?win$/i => '"eucJP-ms"');
Encode::define_alias(qr/\bcp51932$/i     =>  '"eucJP-ms"');

1;
__END__

=head1 NAME

Encode::EUCJPMS - eucJP-ms

=head1 SYNOPSIS

  use Encode::EUCJPMS;
  use Encode qw/encode decode/;
  $eucJP_ms = encode("eucJP-ms", $utf8);
  $utf8   = decode("eucJP-ms", $euc_jp);

=head1 ABSTRACT

This module implements encodings that covers eucJP-ms.
Encodings supported are as follows.

  Canonical     Alias                                      Description
  --------------------------------------------------------------------
  eucJP-ms      qr/\beuc-?jp-?ms$/i                           eucJP-ms
                qr/\beuc-?jp-?win$/i
                qr/\bcp51932$/i
  --------------------------------------------------------------------

=head1 DESCRIPTION

To find out how to use this module in detail, see L<Encode>.

=head1 INSTALLATION

To install this module type the following:

   perl Makefile.PL
   make
   make test
   make install

If you want to add eucJP-ms to Encode's demand-loading list
(so you don't have to "use Encode::EUCJPMS"), run

  enc2xs -C

to update Encode::ConfigLocal, a module that controls local settings.
After that, "use Encode;" is enough to load eucJP-ms on demand.

=head1 DEPENDENCIES

This module requires perl version 5.7.3 or later.

=head1 AUTHOR

NARUSE, Yui E<lt>naruse@airemix.comE<gt>

=head1 COPYRIGHT

Copyright (C) 2005 NARUSE, Yui E<lt>naruse@airemix.comE<gt>

This program is free software; you can redistribute it and/or 
modify it under the same terms as Perl itself.

See L<http://www.perl.com/perl/misc/Artistic.html>

=head1 SEE ALSO

L<Encode>, L<Encode::JP>

Problems and Solutions for Unicode and User/Vendor Defined Characters
L<http://www.opengroup.or.jp/jvc/cde/ucs-conv-e.html>

Windows Codepage 932
L<http://www.microsoft.com/globaldev/reference/dbcs/932.mspx>

=cut
