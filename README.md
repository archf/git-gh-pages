usage: git gh-pages <command> <options> <arguments>

    Commands:
      init      Create orphan gh-pages branch
      update    Rebuild documentation locally
      push      Push local gh-pages changes upstream

      status    Get status of a gh-pages

      help      gh-pagesumentation for git-gh-pages (or specific command)
      version   Display git-gh-pages version info

    See 'git help gh-pages' for complete doumentation and usage of each command.

    Options:

    -h                    Show the command summary
    --help                Help overview
    --version             Print the git-gh-pages version number
    -q, --quiet           Show minimal output
    -v, --verbose         Show verbose output
    -d, --debug           Show the actual commands used
    -x, --DEBUG           Turn on -x Bash debugging

options for 'push'
    -m, --message ...     Commit message

options for 'update'
    -b, --builder ...     Build tool generates your gh-pages documation (default:=sphinx)
    -o, --opts ...        Arguments literally passed to the builder tool

