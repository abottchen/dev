class helloworld {
  notify {'Hello world from dev!': }
  exec {'sleep': command => '/bin/sleep 5'}
}
