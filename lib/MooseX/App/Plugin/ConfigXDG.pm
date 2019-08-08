package MooseX::App::Plugin::ConfigXDG;

use 5.010;
use utf8;

use namespace::autoclean;
use Moose::Role;
with qw(MooseX::App::Plugin::Config);

sub plugin_metaroles {
    my ($self, $class) = @_;

    return {
        class => [
            'MooseX::App::Plugin::Config::Meta::Class',
            'MooseX::App::Plugin::ConfigXDG::Meta::Class'
        ]
    };
}

1;

__END__
