#see http://blog.nicksieger.com/articles/2006/04/23/tweaking-irb
require 'irb/completion'
ARGV.concat [ "--readline", "--prompt-mode", "simple" ]

module Readline
  module History
    LOG = "#{ENV['HOME']}/.irb-history"

    def self.write_log(line)
      File.open(LOG, 'ab') {|f| f << "#{line}
"}
    end

    def self.start_session_log
      write_log("
# session start: #{Time.now}

")
      at_exit { write_log("
# session stop: #{Time.now}
") }
    end
  end

  alias :old_readline :readline
  def readline(*args)
    ln = old_readline(*args)
    begin
      History.write_log(ln)
    rescue
    end
    ln
  end
end

Readline::History.start_session_log

require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"

# Just for Rails...
if rails_env = ENV['RAILS_ENV']
  rails_root = File.basename(Dir.pwd)
  IRB.conf[:PROMPT] ||= {}
  IRB.conf[:PROMPT][:RAILS] = {
    :PROMPT_I => "#{rails_root}> ",
    :PROMPT_S => "#{rails_root}* ",
    :PROMPT_C => "#{rails_root}? ",
    :RETURN => "=> %s\n"
  }
  IRB.conf[:PROMPT_MODE] = :RAILS

  # Called after the irb session is initialized and Rails has
  # been loaded (props: Mike Clark).
  IRB.conf[:IRB_RC] = Proc.new do
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    ActiveRecord::Base.instance_eval { alias :[] :find }
  end
end
