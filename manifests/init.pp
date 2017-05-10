# This is a placeholder class.
class desoleary {

sudoers { 'installer':
    users    => $::boxen_user,
    hosts    => 'ALL',
    commands => [
      '(ALL) SETENV:NOPASSWD: /usr/sbin/installer',
    ],
    type     => 'user_spec',
  }
  
  homebrew::tap { 'theseal/ssh-askpass': }
  package { ['ssh-askpass']:
    ensure => installed,
    require => Homebrew::Tap['theseal/ssh-askpass']
  }

 package { ['tunnelblick','spectacle','the-unarchiver','rubymine','google-chrome', 'alfred', 'karabiner', 'moom', 'copyq', 'ccmenu', 'hipchat', 'balsamiq-mockups', 'datagrip', 'evernote', 'filezilla', 'gpgtools', 'iterm2', 'kodi', 'omnidisksweeper', 'pycharm', 'sequel-pro', 'sublime-text', 'virtualbox', 'webstorm', 'xscope']:
    ensure   => installed,
    provider => 'brewcask'
  }
}
