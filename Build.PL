use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'VCS::Which',
    license           => 'perl',
    dist_author       => 'Ivan Wills <ivan.wills@gmail.com>',
    dist_version_from => 'lib/VCS/Which.pm',
    requires          => {
        perl                 => 5.008,
        'Contextual::Return' => 0,
        'File::chdir'        => 0,
        'IO::Prompt'         => 0,
        'List::MoreUtils'    => 0,
        'List::Util'         => 0,
        'Path::Class'        => '0.16',
        'version'            => 0,
    },
    configure_requires => {
        'Module::Build' => 0.38,
    },
    build_requires => {
        'Test::More'           => 0,
        'Test::Warnings'       => 0,
        'Test::MinimumVersion' => 0,
    },
    recommends => {
        'Time::HiRes' => 0,
    },
    add_to_cleanup     => [ 'VCS-Which-*' ],
    create_makefile_pl => 'traditional',
    create_license     => 1,
    meta_merge         => {
        resources => {
            repository => 'http://github.com/ivanwills/VCS-Which',
            bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=VCS-Which',
        },
    },
);

$builder->create_build_script();
