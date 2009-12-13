package WWW::Stickam::API::User::Video;

use strict;
use warnings;
use base qw/WWW::Stickam::API::Base/;


sub uri {
    my $s     = shift;
    my $args  = shift;
    my $user_name = $args->{user_name};
    die 'You must set user name ' unless $user_name;
    delete $args->{user_name};
    my $uri = "http://api.stickam.com/api/user/$user_name/video/";
}


1;

=head1 NAME

WWW::Stickam::API::User::Vido - User/Vido API

=head1 SYNOPSYS

 my $api = WWW::Stickam::API->new();
 if( $api->call('User/Vido' , { user_name => 'stickam' , page => 1 , per_page => 2 } ) ) {
    print Dumper $api->get();
    print $api->get_XML();
    print $api->get_JSON();
 }
 else {
    print $api->error ;
 }

=head1 METHOD

=head2 uri

=head1 SEE ALSO

http://labs.stickam.jp/api/#user-video

=head1 AUTHOR

Tomohiro Teranishi<tomohiro.teranishi@gmail.com>

=cut
