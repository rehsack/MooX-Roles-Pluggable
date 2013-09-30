use strict;
use warnings;

use Module::Build;

my $builder = Module::Build->new(
             module_name       => 'MooX::Roles::Pluggable',
             license           => 'perl',
             dist_author       => q{Jens Rehsack <rehsack@cpan.org>},
             dist_version_from => 'lib/MooX/Roles/Pluggable.pm',
             build_requires    => { 'Test::More' => '0.90', },
             requires => {
                           'Moo::Role' => '1.003000',
			   'Module::Pluggable' => '4.8',
                         },
             add_to_cleanup => ['MooX-Roles-Pluggable-*'],
             meta_merge =>
               { resources => { repository => "https://github.com/rehsack/MooX-Roles-Pluggable", }, },
             test_files => join( ' ' => 't/*.t xt/*.t' ),
);

$builder->create_build_script();
