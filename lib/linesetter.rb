# encoding: UTF-8

# Linesetter is a paragraph (re)formatter for text editing.
# 2010-01-03 / Brad Fults <bfults@gmail.com>
# See LICENSE for license info.

module Linesetter
  BOUNDARY = 78

  def self.format(text)
    indent = (text.match(/\A\s+/).to_s || '').length
    text.gsub!(/\s*\n\s*/, ' ')

    i = 0
    lines = []
    words = text.split(' ')
    while words.size > 0
      lines[i] ||= (' ' * indent)
      if words.first.length + lines[i].length <= BOUNDARY
        lines[i] << words.shift + ' '
      else
        i += 1
      end
    end

    lines.map! {|line| line.rstrip}
    return lines.join("\n")
  end
end
