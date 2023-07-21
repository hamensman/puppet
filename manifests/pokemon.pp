file { '/home/user/pokemon.txt':
   ensure => file,
   content => "Gotta catch'em all!",
}
