# frozen_string_literal: true

module Space2dash
  class Usage
    MESSAGE = <<-EOF.chomp
        NAME:
           space2dash - Change the space into dash

        USAGE:
           $ s2u new branch -c
           =>  Switched to the new branch 'new_branch’

          Or

          $ git branch -m $(s2u renamed branch)

        VERSION:
           #{Space2dash::VERSION}

        OPTIONS:
           --create, -c         create a new branch
    EOF

    def content
      MESSAGE.gsub('        ', '')
    end
  end
end
