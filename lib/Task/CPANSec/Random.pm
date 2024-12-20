package Task::CPANSec::Random;

use strict;
use warnings;

our $VERSION = 'v0.0.1';

__END__

=pod

=head1 NAME

Task::CPANSec::Random - recommended modules for generating random data

=head1 STATUS

This is a draft.

=head1 DESCRIPTION

This contains a list of modules for retrieving or generating cryptographic-quality random and pseudo-radom data.

This is important when the data is used for security purposes, for example, with

=over 4

=item * Cryptography

Encryption keys, message padding and initialisation vectors.

=item * Passwords

Random password generation, password salts and pappers.

=item * Authentication tokens

A random token or nonce that is used to grant access to something, e.g. a session id, or an authorization key as part of
a URL.

=back

=head1 RECOMMENDED MODULES

=head2 Modules for retrieving random data

This contains a list of modules for retrieving random data.

=head3 L<Crypt::URandom>

This is a pure-Perl and platform-independent module for retrieving raw bytes from the F</dev/urandom> device, or from
the Win32 API on Windows 2000 or later.

Note that in recent versions of Linux, there is no difference between F</dev/urandom> and F</dev/random>.

=head3 L<Session::Token>

This is an XS module that initialises the ISAAC PRNG with data from F</dev/urandom> and can generate token strings. It
can be customised to generate strings with arbitrary alphabets and lengths.

=head2 Cryptographic Pseudo-Random Number Generators

It is often faster to use a cryptographic quality PRNG than to make system calls or read from F</dev/urandom>.

=head3 L<Crypt::PRNG>

This is a collection of stream ciphers in L<CryptX> that can be used as pseudo-random number generators.
By default they are initialised with data from F</dev/urandom>.

It supports methods for returning random bytes, integers or floats.

=head2 L<Math::Random::ISAAC>

This is an implementation of the ISAAC PRNG that can generate 32-bit unsignedf integers very quickly (in less than 20
CPU cycles/integer).

=head1 BUGS AND LIMITATIONS

=head1 AUTHOR

=head1 COPYRIGHT AND LICENCE

=cut
