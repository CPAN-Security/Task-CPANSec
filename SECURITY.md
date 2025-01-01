This is the Security Policy for the Perl distribution Task-CPANSec.

The latest version of this Security Policy can be found at
[https://github.com/CPAN-Security/Task-CPANSec](https://github.com/CPAN-Security/Task-CPANSec).

This text is based on the CPAN Security Group's
[Guidelines for Adding a Security Policy to Perl Distributions](https://security.metacpan.org/docs/guides/security-policy-for-authors.html)
(version 0.2.0).

# How to Report a Security Vulnerability

Security vulnerabilties can be reported by e-mail to the CPAN
Security Group (CPANSec) at <cpan-security@security.metacpan.org>.

Please include as many details as possible, including code samples
or test cases, so that we can reproduce the issue.

Please *do not* use the public issue reporting system on RT or
GitHub issues for reporting security vulnerabilities.

Please do not disclose the security vulnerability in public forums
until past any proposed date for public disclosure, or it has been
made public by the maintainers or CPANSec.  That includes patches or
pull requests.

For more information, see
[Report a Security Issue](https://security.metacpan.org/docs/report.html)
on the CPANSec website.

## Response to Reports

The maintainer(s) aim to acknowledge your security report as soon as
possible.  However, this project is maintained by volunteers in
their spare time, and they cannot guarantee a rapid response.

Please note that the initial response to your report will be an
acknowledgement, with a possible query for more information.  It
will not necessarily include any fixes for the issue.

The project maintainer(s) may forward this issue to the security
contacts for other projects where we believe it is relevant.  This
may include embedded libraries, system libraries, prerequisite
modules or downstream software that uses this software.

# What Software this Policy Applies to

Any security vulnerabilities in Task-CPANSec are covered
by this policy.

Security vulnerabilities are considered anything that allows users
to execute unauthorised code, access unauthorised resources, or to
have an adverse impact on accessibility or performance of a system.

Security vulnerabilities in the modules recommended by this
distribution are considered potential vulnerabilities in this distribution.

Otherwise, vulnerabilities in upstream software (embedded libraries,
prerequisite modules or system libraries, or in Perl), are not covered
by this policy unless they affect Task-CPANSec, or
Task-CPANSec can be used to exploit vulnerabilities in
them.

Security vulnerabilities in downstream software (any software that
uses Task-CPANSec, or plugins to it that are not included
with the Task-CPANSec distribution) are not covered by
this policy.

## Which Versions of this Software are Supported?

The maintainer(s) will only commit to releasing security fixes for the
latest version of Task-CPANSec.
