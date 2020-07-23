
# Prompt loading order
SPACESHIP_PROMPT_ORDER=(
    user          # Username section
    dir           # Current directory section
    host          # Hostname section
    jobs          # Background jobs indicator
    git           # Git section (git_branch + git_status)
    line_sep      # Line break
    char          # Prompt character
)

# RightPrompt side
SPACESHIP_RPROMPT_ORDER=(
    package       # Package version
    node          # Node.js section
    php           # PHP section
    pyenv         # Pyenv section
    venv          # virtualenv section
    docker
    julia         # Julia section
)

#

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="↝ "
SPACESHIP_CHAR_SYMBOL_ROOT="↝ "
#
# USER
SPACESHIP_USER_PREFIX="" # remove `with` before username
SPACESHIP_USER_SUFFIX="" # remove space before host

# HOST
# Result will look like this:
#   username@:(hostname)
SPACESHIP_HOST_PREFIX="@:("
SPACESHIP_HOST_SUFFIX=") "

# DIR
SPACESHIP_DIR_PREFIX="" # disable directory prefix, cause it's not the first section
SPACESHIP_DIR_TRUNC=0   # show only last directory
SPACESHIP_DIR_TRUNC_PREFIX="➜ "
#SPACESHIP_DIR_TRUNC_REPO=false

# GIT
# Wrap git in `git:(...)`
SPACESHIP_GIT_PREFIX=""
SPACESHIP_GIT_BRANCH_SUFFIX="" # remove space after branch name
# Unwrap git status from `[...]`
SPACESHIP_GIT_STATUS_PREFIX=" "
SPACESHIP_GIT_STATUS_SUFFIX=""

# JOBS
SPACESHIP_JOBS_SHOW="true"
SPACESHIP_JOBS_PREFIX="["
SPACESHIP_JOBS_SUFFIX="] "

# PACKAGES
SPACESHIP_PACKAGE_PREFIX=""

# NODE
SPACESHIP_NODE_PREFIX=""

# RUBY
SPACESHIP_RUBY_PREFIX=""

# PHP
SPACESHIP_PHP_PREFIX=""

# PYENV
SPACESHIP_PYENV_PREFIX=""

# VENV
SPACESHIP_VENV_PREFIX=""

# DOCKER
SPACESHIP_DOCKER_PREFIX=""

# JULIA
SPACESHIP_JULIA_PREFIX=""
