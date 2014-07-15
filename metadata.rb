name             'chef-zephyr'
maintainer       'gsilantyev'
maintainer_email 'gsilantyev@griddynamics.com'
license          'Apache 2.0'
description      'Installs/Configures Zephyr plugin for JIRA'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'
recipe           'zephyr', 'Includes the recipe to download and install Zephyr plugin'

