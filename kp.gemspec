$:.push File.expand_path('../lib', __FILE__)
require 'kp/version'

Gem::Specification.new do |s|
  s.name        = 'kp'
  s.version     = Kp::VERSION
  s.licenses    = ['MIT']
  s.summary     = 'Command line tool taht prints famous quotes.'
  s.description = 'Command line tool taht prints famous quotes.'
  s.authors     = ['Tony Jian']
  s.email       = 'leo424y@gmail.com'
  s.files       = Dir['lib/**/*.{rb,txt}']
  s.executables = 'kp'
  s.homepage    = 'https://github.com/leo424y/kp'
  s.add_runtime_dependency 'thor'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.post_install_message = <<EOS
============================================
Thanks for installing!
A new command `kp` was added, enjoy!

$ kp help
Commands:
  kp apologize                             # Ask kp to apologize
  kp debate                                # Ask kp to debate
  kp help [COMMAND]                        # Describe available commands or one specific command
  kp paragraph [NUMBER] [SENTENCE_NUMBER]  # Prints paragraphs
  kp says [NUMBER]                         # Prints famous quotes. (Default task)
  kp sentence [NUMBER]                     # Prints famous quotes inline
  kp version                               # Prints version

============================================
EOS
end
