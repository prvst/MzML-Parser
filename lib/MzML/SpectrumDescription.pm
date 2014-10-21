package MzML::SpectrumDescription;

use strict;
use warnings;
use v5.12;
use Moose;
use namespace::autoclean;
use MzML::AquisitionList;
use MzML::PrecursorList;
use MzML::Scan;

with 'MzML::CommonParams';

has 'aquisitionList' => (
    is  =>  'rw',
    isa =>  'MzML::AquisitionList',
    default => sub {
        my $self = shift;
        return my $obj = MzML::AquisitionList->new();
        }
    );

has 'precursorList' => (
    is  =>  'rw',
    isa =>  'MzML::PrecursorList',
    default => sub {
        my $self = shift;
        return my $obj = MzML::PrecursorList->new();
        }
    );

has 'scan' => (
    is  =>  'rw',
    isa =>  'MzML::Scan',
    default => sub {
        my $self = shift;
        return my $obj = MzML::Scan->new();
        }
    );
