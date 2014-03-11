use strict;
use warnings;
use lib 't/lib';
use Test::More;

use Test::Requires {
  'Moose::Role'               => 0,
  'Sub::Exporter::ForMethods' => 0,
};

use Class;

can_ok(
  'Class',
  qw(
    section_data
    section_data_names
    merged_section_data
    merged_section_data_names
    local_section_data
    local_section_data_names
    )
);

is_deeply(
  [ sort Class->section_data_names ],
  [ qw(a b c) ],
  'Class sees section data from Role'
);

done_testing;
