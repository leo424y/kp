require 'kp'
require 'thor'
require 'kp/version'

module Kp
  class Cli < Thor
    default_task :says
    desc 'says [NUMBER]', 'Prints famous quotes. (Default task)'
    def says number = 1
      puts Kp.says(number)
    end

    desc 'sentence [NUMBER]', 'Prints famous quotes inline'
    def sentence number = 1
      puts Kp.sentence(number)
    end

    desc 'paragraph [NUMBER] [SENTENCE_NUMBER]', 'Prints paragraphs'
    def paragraph number = 1, per_paragraph = 5
      puts Kp.paragraph(number, per_paragraph)
    end

    desc 'apologize', 'Ask kp to apologize'
    def apologize
      puts Kp.apologize
    end

    desc 'debate', 'Ask kp to debate'
    def debate
      puts Kp.debate
    end

    desc 'version', 'Prints version'
    def version
      puts Kp::VERSION
    end

    no_tasks do
      def self.handle_no_command_error(command, has_namespace = $thor_runner)
        command.to_i == 0 ? super : self.new.invoke(:says, [command.to_i])
      end
    end
  end
end
