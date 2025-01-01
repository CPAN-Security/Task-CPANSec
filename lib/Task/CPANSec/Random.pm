package Task::CPANSec::Random;

# ABSTRACT: Recommended modules for generating random data

use strict;
use warnings;

our $VERSION = 'v0.0.1';

__END__

=pod

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

Fortunately, modern operating systems provide access to good sources of random data:

=over

=item *

Linux and BSD variants have devices like F</dev/random> and F</dev/urandom>.

=item *

Newer Linux and BSD variants have the L<getrandom(2)> or L<getentropy(2)> system functions.

=item

Windows provides a C<CryptGenRandom> function in the API.

=back

These sources are easy to access from Perl using several modules.

=head1 RECOMMENDED MODULES

This list is not exhaustive, but it contains modules that we believe are good solutions for their tasks, and are being
actively maintained.

=head2 Modules for retrieving random data

This contains a list of modules for retrieving random data.

=cut

# RECOMMEND PREREQ: Crypt::URandom

=head3 L<Crypt::URandom>

This is a platform-independent module for retrieving raw bytes from the F</dev/urandom> device, or from
the Win32 API on Windows 2000 or later.

Newer versions may use the system L<getrandom(2)> or L<getentropy(2)> functions.

It is important to note that there is a common misconception that F</dev/urandom> is insecure. This is untrue, as
F</dev/random> and F</dev/urandom> use the same entropy pool and PRNG internally.
In newer Linux kernels, there is no difference between F</dev/urandom> and F</dev/random>.

=cut

# RECOMMEND PREREQ: Sys::GetRandom

=head3 L<Sys::GetRandom>

This is an XS module that calls the system L<getrandom(2)> function, and only works on Linux and BSD versions that
support it.  It is generally faster than making system calls or reading from F</dev/urandom>.

=cut

# RECOMMEND PREREQ: Sys::GetRandom::PP

=head3 L<Sys::GetRandom::PP>

This is a pure-Perl version of L<Sys::GetRandom> that makes system calls to the L<getrandom(2)> function.

=head2 Cryptographic Pseudo-Random Number Generators

It is often faster to use a cryptographic quality PRNG than to make system calls or read from F</dev/urandom>.

=cut

# RECOMMEND PREREQ: Crypt::PRNG

=head3 L<Crypt::PRNG>

This is a collection of stream ciphers in L<CryptX> that can be used as pseudo-random number generators.
By default they are initialised with data from F</dev/urandom>.

It supports methods for returning random bytes, integers or floats.

=cut

# RECOMMEND PREREQ: Math::Random::ISAAC

=head2 L<Math::Random::ISAAC>

This is an implementation of the ISAAC PRNG that can generate 32-bit unsigned integers very quickly (in less than 20 CPU
cycles/integer). There is also a companion L<Math::Random::ISAAC::XS> that can be used for for improved performance.

Note that it must be seeded properly before using for cryptographic purposes, e.g.

    my $prng = Math::Randam::ISAAC->new( unpack( "N*", urandom(1024) ) );

=cut

# RECOMMEND PREREQ: Session::Token

=head3 L<Session::Token>

This is an XS module that initialises the ISAAC PRNG with data from F</dev/urandom> and can generate token strings. It
can be customised to generate strings with arbitrary alphabets and lengths.

Note that there is still an L<unreleased change|https://github.com/hoytech/Session-Token/pull/3> in the git repository
for this module that fixes an issue with missing null terminators.

=head1 SEE ALSO

=over

=item L<ISAAC|https://burtleburtle.net/bob/rand/isaac.html>

=back

=cut
