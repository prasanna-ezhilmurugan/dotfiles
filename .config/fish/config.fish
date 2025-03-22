alias ls="eza --icons"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/prasanna/.miniconda3/bin/conda
    eval /home/prasanna/.miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/prasanna/.miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/prasanna/.miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/prasanna/.miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

