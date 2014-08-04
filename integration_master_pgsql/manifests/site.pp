file {'testfile':
    path    => '/home/vagrant/testfile',
    ensure  => present,
    mode    => 0640,
    content => "I'm a test file.",
}
package {'git':
    ensure  => latest,
}
package {'apache2':
    ensure  => latest,
}
