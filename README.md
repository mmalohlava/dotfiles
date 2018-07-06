# dotfiles

Organized by [dotbot](https://github.com/anishathalye/dotbot/)

# Installation

```
cd ~ && git clone https://github.com/mmalohlava/dotfiles/ .dotfiles && cd .dotfiles && ./install
```

Note: The `install` script is merely a shim that checks out the appropriate
version of Dotbot and calls the full Dotbot installer. By default, the script
assumes that the configuration is located in `install.conf.yaml` the Dotbot
submodule is located in `dotbot`. You can change either of these parameters by
editing the variables in the `install` script appropriately.

Setting up Dotbot as a submodule or subrepo locks it on the current version.
You can upgrade Dotbot at any point. If using a submodule, run `git submodule
update --remote dotbot`, substituting `dotbot` with the path to the Dotbot
submodule; be sure to commit your changes before running `./install`, otherwise
the old version of Dotbot will be checked out by the install script. If using a
subrepo, run `git fetch && git checkout origin/master` in the Dotbot directory.

# Resources

  - [Awesome dotfiles](https://github.com/webpro/awesome-dotfiles)
  - [conf.d like structure](https://chr4.org/blog/2014/09/10/conf-dot-d-like-directories-for-zsh-slash-bash-dotfiles/)
  - [Managing Your Dotfiles](https://www.anishathalye.com/2014/08/03/managing-your-dotfiles/)
  - https://git.io/dotbot 💾
