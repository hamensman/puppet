file { '/home/user/one_piece.txt':
    ensure => file,
    content => 'Luffy\nZoro\nNami\n...'
}
