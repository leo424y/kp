# encoding: utf-8
module Kp
  class << self
    # per line
    def says n = 1
      quotes.sample(n.to_i).join($/)
    end

    # inline
    def sentence n = 1
      quotes.sample(n.to_i).join
    end

    def paragraph n = 3, per_paragraph = 3
      ret = []
      n.to_i.times{ret << sentence(per_paragraph.to_i)}
      ret.join("\n\n")
    end

    def apologize
      '讓大家聽了不悅，對此道歉'
    end

    def debate
      ret = []
      (rand(96) + 5).times{ ret << ['z', 'Z', '...'].sample }
      ret.join
    end

    def quotes
      @quotes ||= File.readlines(File.expand_path('../kp/quotes.txt', __FILE__)).map(&:strip)
    end
  end
end
