package Data::Faker::UKAddress;
use strict;
use warnings;
use vars qw($VERSION); $VERSION = '0.10';
use base 'Data::Faker';
use Data::Faker::Name;

=head1 NAME

Data::Faker::UKAddress - Data::Faker plugin

=head1 SYNOPSIS AND USAGE

See L<Data::Faker>

=head1 DATA PROVIDERS

=over 4

=item uk_postcode

Return a random postcode in the UK postcode format.  Note that
this is not necessarily a valid postcode, just a 5 or 9 digit number in the
correct format.

=cut

__PACKAGE__->register_plugin(
    uk_postcode => [ '$L# #$L$L', '$L$L# #$L$L', '$L## #$L$L', '$L$L## #$L$L' ],
);

__PACKAGE__->register_plugin( L => [ ( "A" .. "Z" ) ], );

=item uk_county

Return a random UK county name.

=cut

__PACKAGE__->register_plugin(
    uk_county => [
        'Aberdeenshire',      'Anglesey',
        'Angus',              'Antrim',
        'Argyll',             'Armagh',
        'Ayrshire',           'Banffshire',
        'Bedfordshire',       'Berkshire',
        'Berwickshire',       'Brecknockshire',
        'Buckinghamshire',    'Buteshire',
        'Caernarfonshire',    'Caithness',
        'Cambridgeshire',     'Cardiganshire',
        'Carmarthenshire',    'Cheshire',
        'Clackmannanshire',   'Cornwall',
        'Cromartyshire',      'Cumberland',
        'Denbighshire',       'Derbyshire',
        'Devon',              'Dorset',
        'Down',               'Dumbartonshire',
        'Dumfriesshire',      'Durham',
        'East Lothian',       'Essex',
        'Fermanagh',          'Fife',
        'Flintshire',         'Glamorgan',
        'Gloucestershire',    'Hampshire',
        'Herefordshire',      'Hertfordshire',
        'Huntingdonshire',    'Inverness-shire',
        'Kent',               'Kincardineshire',
        'Kirkcudbrightshire', 'Lanarkshire',
        'Lancashire',         'Leicestershire',
        'Lincolnshire',       'Londonderry',
        'Merionethshire',     'Middlesex',
        'Midlothian',         'Monmouthshire',
        'Montgomeryshire',    'Morayshire',
        'Nairnshire',         'Norfolk',
        'Northamptonshire',   'Northumberland',
        'Nottinghamshire',    'Orkney',
        'Oxfordshire',        'Peeblesshire',
        'Pembrokeshire',      'Perthshire',
        'Radnorshire',        'Renfrewshire',
        'Ross-shire',         'Roxburghshire',
        'Rutland',            'Selkirkshire',
        'Shetland',           'Shropshire',
        'Somerset',           'Staffordshire',
        'Stirlingshire',      'Suffolk',
        'Surrey',             'Sussex',
        'Sutherland',         'Tyrone',
        'Warwickshire',       'West Lothian',
        'Westmorland',        'Wigtownshire',
        'Wiltshire',          'Worcestershire',
        'Yorkshire',
    ],
);

=head1 COPYRIGHT AND LICENSE

Copyright 2004-2005 by Martin Renvoize

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;

