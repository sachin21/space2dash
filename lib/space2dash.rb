require 'space2dash/version'

module Space2dash
  class << self
    def convert(argv)
      argv.length == 1 ? argv[0].strip.gsub(/\s/,  '-') : argv.join('-')
    end

    def generate_command(dash_include_sentence)
      "echo #{dash_include_sentence} | ruby -pe 'chomp' | #{copy_cmd}"
    end

    def execute_command(command)
      system command
    end

    def copy_cmd
      if system("type pbcopy > /dev/null 2>&1")
        "pbcopy"
      elsif system("type xsel > /dev/null 2>&1")
        "xsel --input --clipboard"
      elsif system("type xclip > /dev/null 2>&1")
        "xclip"
      end
    end

    def create_new_branch(dash_include_sentence)
      print "Do you create the new branch? [y/Y/Yes, n/N/No]"
      flag = $stdin.gets.chomp

      if /^y(es)?$/ === flag || flag == ''
        system "git checkout -b #{dash_include_sentence}"
        "Branch has been created."
      else
        execute_command(generate_command(dash_include_sentence))

        "Branch name has been copied to clipboard."
      end
    end
  end
end
