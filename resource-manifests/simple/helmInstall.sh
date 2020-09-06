# These commands have to run manually and output differs based on
# OS and directory structure.

brew uninstall helm@2

brew install helm@2

# If you need to have helm@2 first in your PATH run:
#   echo 'export PATH="/usr/local/opt/helm@2/bin:$PATH"' >> /Users/maheshrajannan/.bash_profile


# Bash completion has been installed to:
#   /usr/local/opt/helm@2/etc/bash_completion.d

# zsh completions have been installed to:
#   /usr/local/opt/helm@2/share/zsh/site-functions
# ==> Summary
# 🍺  /usr/local/Cellar/helm@2/2.16.10: 51 files, 87.5MB

# If you get the warning below then do a force.
brew link --overwrite helm@2
# Warning: helm@2 is keg-only and must be linked with --force
# Got warning after running brew link so adding warning.

brew link --overwrite --force helm@2

# Create cluster and then do helm init

# Don't do helm init.agh