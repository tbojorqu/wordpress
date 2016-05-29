name             'my-wordpress'
maintainer       'myco'
maintainer_email 'timbojo@charter.net'
license          'All rights reserved'
description      'Installs/Configures my-wordpress'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'mysql', '~> 6.0'
