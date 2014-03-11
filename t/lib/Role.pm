use strict;
use warnings;
package Role;
use Sub::Exporter::ForMethods qw( method_installer );
use Data::Section { installer => method_installer() }, -setup;

use Moose::Role;

1;
__DATA__
__[a]__
1
__[b]__
2
__[c]__
3
