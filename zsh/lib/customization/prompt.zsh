# Prompt loading order
SPACESHIP_PROMPT_ORDER=(
    user          # Username section
    dir           # Current directory section
    host          # Hostname section
    git           # Git section (git_branch + git_status)
    php           # PHP section
    julia         # Julia section
    venv          # virtualenv section
    pyenv         # Pyenv section
    line_sep      # Line break
    jobs          # Background jobs indicator
    char          # Prompt character
)

# RightPrompt side
SPACESHIP_RPROMPT_ORDER=(
    package       # Package version
    node          # Node.js section
)

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_DIR_TRUNC=0
SPACESHIP_CHAR_SYMBOL="↝ "
SPACESHIP_DIR_TRUNC_PREFIX="> "
SPACESHIP_PACKAGE_PREFIX=''
SPACESHIP_GIT_PREFIX=''
SPACESHIP_USER_PREFIX=''
SPACESHIP_NODE_PREFIX=''

#SPACESHIP_EXEC_TIME_ELAPSED=5
