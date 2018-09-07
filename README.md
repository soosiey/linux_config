# dotfiles
Config files for running i3 on Linux

This repo contains all the configuration files for running my workflow on a Linux machine running i3 gaps. Currently in the process of making an install script that will allow the user to install/uninstall the necessary files simply by running it.

The current progress is creating a mybashrc and mybashprofile, and sourcing them from bashrc and bash_profile. This allows the bashrc and bash_profile to be consistent across machines and the user to add whatever customizations they want to the custom files.

The functions.sh file is currently working for what it does: it will link a couple of the config files in the home directory in such a way that they are sourced when needed, (ex: vimrc will be checked upon opening vim even though it is just a symlink).
The symlink structure allows editing to happen all in one place so that commits to git can be made, as well as keeping everything nice and clean :).

IN PROGRESS:
    Create a myvimrc that is sourced from vimrc, as well as a my_vimrc_plugins that allows users to just put the plugins and nothing else: this is a clean way to keep track of your custom edits to the base vimrc.
    Create an install/uninstall script that installs any needed dependencies and then installs the config files in the necessary places, thus porting the workflow to your local machine.
    Ceate a script that checks for any dependencies, and installs them, preferably asking the user first.
    Create maneuverability and customization-on-install: allow the user to set things like background or colorschemes if they have one in mind as the install happens.
    Separate files by importance and keep them separately: things like xinitrc and Xresources should be kept separate from things like vimrc.
    Etc...

If you have any great ideas on how to make this idea/workflow better, fork/pull and comment your idea!









~






