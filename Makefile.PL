use inc::Module::Install;

name     'Archive-RPM';
all_from 'lib/Archive/RPM.pm';
author   'Chris Weyl <cweyl@alumni.drew.edu>';
license  'perl';

requires 'namespace::clean';

requires 'Moose';
requires 'MooseX::AttributeHelpers';
requires 'MooseX::Types::DateTime';
requires 'MooseX::Types::Path::Class';

requires 'RPM2' => 0.67;
requires 'DateTime';
requires 'Path::Class';

requires_external_bin 'rpm2cpio';
requires_external_bin 'cpio';

test_requires 'Test::More';

extra_tests;
auto_install;

WriteAll;

