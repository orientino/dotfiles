if status is-interactive

    # vim 
    fish_vi_key_bindings
    set fish_cursor_default block
    set fish_cursor_insert line
    set fish_cursor_replace_one underscore
    set fish_cursor_replace underscore
    set fish_cursor_external line
    set fish_cursor_visual block
    bind -M insert jj "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"

    # alias
    alias ls="ls -G"
    alias ll="ls -l -G"
    alias mamba=micromamba
    alias p=python3
    alias studentid="echo 023244692A | pbcopy"
    alias yr="yabai --restart-service; skhd --reload"
    alias kw="ps aux|grep wandb|grep -v grep | awk '{print $2}'|xargs kill -9"
    alias to="vim ~/todo"
    alias ds="cd ~/satoss/courses/distributedsystems"
    alias ..="cd .."
    alias ...="cd ../.."
    alias rsync="rsync -avzu"
    alias sshf="ssh iris -tt 'bash --login -c fish'"
    alias sshfm="ssh meluxina -tt 'bash --login -c fish'"

    # >>> mamba initialize >>>
    # !! Contents within this block are managed by 'mamba init' !!
    set -gx MAMBA_EXE "/Users/chenxiang.zhang/.local/bin/micromamba"
    set -gx MAMBA_ROOT_PREFIX "/Users/chenxiang.zhang/micromamba"
    $MAMBA_EXE shell hook --shell fish --root-prefix $MAMBA_ROOT_PREFIX | source
    # <<< mamba initialize <<<

    export PATH="/usr/local/nvim/bin:$PATH"

end

