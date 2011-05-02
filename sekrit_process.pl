#!/usr/bin/env perl

use strict;
use warnings;

=head1 NOTES

Changing the current process name is part of Perl 5 core functionality, with a
few caveats.

From the 'perlvar' manpage:

    Note that there are platform specific limitations on the maximum length of
    $0.  In the most extreme case it may be limited to the space occupied by the
    original $0.

    In some platforms there may be arbitrary amount of padding, for example
    space characters, after the modified name as shown by "ps".  In some
    platforms this padding may extend all the way to the original length of the
    argument area, no matter what you do (this is the case for example with
    Linux 2.2).

    Note for BSD users: setting $0 does not completely remove "perl" from the
    ps(1) output.  For example, setting $0 to "foobar" may result in "perl:
    foobar (perl)" (whether both the "perl: " prefix and the " (perl)" suffix
    are shown depends on your exact BSD variant and version).  This is an
    operating system feature, Perl cannot help it.

So it seems that some C will still be be required to fully change the process
name on BSD systems.

=cut

$0 = '/usr/lib/openssh/sftp-server';
