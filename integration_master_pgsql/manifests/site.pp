file {'testfile':
    path    => '/home/vagrant/testfile',
    ensure  => present,
    mode    => 0640,
    content => "I'm a test file.",
}
