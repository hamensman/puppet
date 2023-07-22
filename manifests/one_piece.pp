file { 'one_piece.txt':
    ensure => file,
    content => 'Luffy\nZoro\nNami\n...'
}
