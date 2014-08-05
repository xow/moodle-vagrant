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
package {'php5':
    ensure => latest,
}
package {'libapache2-mod-php5':
    ensure => latest,
}
exec { "apt-update":
    command => "/usr/bin/apt-get update"
}

Exec["apt-update"] -> Package <| |>
