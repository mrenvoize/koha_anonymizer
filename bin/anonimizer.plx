#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

use C4::Context;
use C4::Members;
use Data::Dumper;
use Data::Faker;

my $dbh = C4::Context->dbh; 
my $faker = Data::Faker->new();
my $counter;
my @animation = qw( \ | / - );

process();

sub process {
    my $sql = 'select borrowernumber from borrowers';

    my $borrowers = $dbh->selectall_arrayref($sql);
    print "anonymizing patrons... ";
    for my $b ( @{$borrowers} ) {
        process_user( $b->[0] );
    }
    return;
}

sub process_user {
    my $borrowernumber = shift;

    my %borrower;
    $borrower{borrowernumber} = $borrowernumber;
    $borrower{title}          = $faker->name_prefix;
    $borrower{surname}        = $faker->last_name;
    $borrower{firstname}      = $faker->first_name;
    $borrower{email}          = $faker->email;
    $borrower{phone}          = $faker->phone_number;
    $borrower{mobile}         = $faker->phone_number;
    $borrower{address}        = $faker->street_name;
    $borrower{address2}       = undef;
    $borrower{city}           = $faker->city;
    $borrower{state}          = $faker->uk_county;
    #$borrower{country}        = $faker->country_name;
    $borrower{zipcode}        = $faker->uk_postcode;
    $borrower{B_address}      = $faker->street_name;
    $borrower{B_address2}     = undef;
    $borrower{B_city}         = $faker->city;
    $borrower{B_state}        = $faker->uk_county;
    #$borrower{B_country}      = $faker->country_name;
    $borrower{B_zipcode}      = $faker->uk_postcode;
    
    if ( ModMember(%borrower) ) {
        print "$animation[$counter++]\b";
        $counter = 0 if $counter == scalar(@animation);
	return 1;
    }

    return 0;
}
