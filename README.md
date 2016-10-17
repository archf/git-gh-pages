# Synopsis

This is an extra git command to manage your github pages. Let's face it,
managing the statics website in an extra branch sucks. It is more complex than
it should and also error prone.

This tool allows you for instance in 3 commands to have your `gh-pages` up and
running providing you can already turn your documentation into static html.

By convention you should have your documentation sourcefiles inside the`docs
directory. `gh-pages` should be the output directory for the build.

Then:

```bash
git gh-pages init
git gh-pages update
git gh-pages push
```

Later on you can simply:

```bash
git gh-pages update
git gh-pages push
```

# How it works

This will checkout the `gh-pages` branch inside the `gh-pages` directory at the
root of your repo using `git-worktree`. A `gh-pages` entry is added in your
`.gitignore`. Files added inside the `gh-pages` (the build target) directory
can be commited to the corresponding branch. Empty commits only are done at the
moment.

# Installation

```bash
make install
```

# Status

Only works with sphinx for now.

See usage below:
```
usage: git gh-pages <command> <options> <arguments>

    Commands:
      init      Create orphan gh-pages branch
      update    Rebuild documentation locally
      push      Push local gh-pages changes upstream

      help      gh-pages documentation for git-gh-pages
      version   Display git-gh-pages version info

    See 'git help gh-pages' for complete doumentation and usage of each command.

    Options:

    -h                    Show the command summary
    --help                Help overview
    --version             Print the git-gh-pages version number
    -q, --quiet           Show minimal output
    -v, --verbose         Show verbose output

options for 'update'
    -b, --builder ...     Build tool generates your gh-pages documation (default:=sphinx)
    -o, --opts ...        Arguments literally passed to the builder tool
```
