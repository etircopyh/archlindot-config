# Eliminates duplicates in *paths
typeset -gU cdpath fpath mailpath path

# XDG Base Directory
#export XDG_CACHE_HOME="/tmp/$USER/.cache"
#export XDG_CONFIG_HOME="$HOME/.config"
#export XDG_DATA_HOME="$HOME/.local/share"
#export XDG_LIB_HOME="$HOME/.local/lib"
#export XDG_STATE_HOME="$HOME/.local/state"



[[ -x "$(command -v python)" ]] && export PYTHONUSERBASE="${XDG_LIB_HOME:-$HOME/.local/lib}/python"
[[ -x "$(command -v go)" ]] && export GOPATH="${XDG_LIB_HOME:-$HOME/.local/lib}/go" && \
                               export GOBIN="$GOPATH/bin"
[[ -x "$(command -v rustc)" ]] && \
    export RUSTUP_HOME="$HOME/.local/lib/rust/rustup" \
           CARGO_HOME="$HOME/.local/lib/rust/cargo" \
           CARGO_NAME="etircopyh" \
           CARGO_EMAIL="etircopyh@protonmail.com"

[[ -x "$(command -v docker)" ]] && export DOCKER_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/docker"

[[ -x "$(command -v parallel)" ]] && export PARALLEL_HOME="${XDG_CACHE_HOME:-$HOME/.cache}/parallel"

[[ -x "$(command -v gtk2)" ]] && export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc"

mkdir -p "${XDG_STATE_HOME:-$HOME/.local/state}/less"
export LESSKEY="${XDG_CONFIG_HOME:-$HOME/.config}/less/lesskey" \
       LESSHISTFILE="${XDG_STATE_HOME:-$HOME/.local/state}/less/history"

[[ -x "$(command -v plasmashell)" ]] && export KDEHOME="${XDG_CONFIG_HOME:-$HOME/.config}/kde"

[[ -x "$(command -v node)" ]] && export NODE_REPL_HISTORY="${XDG_STATE_HOME:-$HOME/.local/state}/node/node_repl_history"

[[ -x "$(command -v npm)" ]] && export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/npm/npmrc" \
                                       NPM_CONFIG_CACHE="${XDG_CACHE_HOME:-$HOME/.cache}/npm"

[[ -x "$(command -v pylint)" ]] && export PYLINTHOME="${XDG_CACHE_HOME:-$HOME/.cache}/pylint"

[[ -x "(command -v wget)" ]] && export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"

[[ -x "(command -v xauth)" ]] && export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"

[[ -x "(command -v xinit)" ]] && export XINITRC="${XDG_CONFIG_HOME:-$HOME/.config}/X11/xinitrc" \
                                        XSERVERRC="${XDG_CONFIG_HOME:-$HOME/.config}/X11/xserverrc"

[[ -x "$(command -v adb)" ]] && export ANDROID_PREFS_ROOT="${XDG_CONFIG_HOME:-$HOME/.config}/android"
                                export ADB_KEYS_PATH="$ANDROID_PREFS_ROOT"
                                export ANDROID_SDK_ROOT="$ANDROID_PREFS_ROOT" ANDROID_SDK_HOME="$ANDROID_PREFS_ROOT" ANDROID_EMULATOR_HOME="$ANDROID_PREFS_ROOT"

[[ -x "$(command -v sqlite3)" ]] && export SQLITE_HISTORY="${XDG_STATE_HOME:-$HOME/.local/state}/sqlite/sqlite_history"

export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/readline/inputrc"

export GRADLE_USER_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/gradle"

export NSS_SHARED_DB_PATH="${XDG_DATA_HOME:-$HOME/.local/share}/pki/nssdb" \
       NSS_USE_SHARED_DB=1

[[ -x "$(command -v gpg)" ]] && export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}/gnupg"

# Flatpak
if [[ -x "$(command -v flatpak)" ]]; then
    export FLATPAK_CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/flatpak" \
           FLATPAK_SYSTEM_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/flatpak" \
           FLATPAK_USER_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/flatpak"
fi

[[ -x "$(command -v venv)" ]] && export WORKON_HOME="${XDG_LIB_HOME:-$HOME/.local/lib}/python/virtualenvs"

export GDBHISTFILE="${XDG_STATE_HOME:-$HOME/.local/state}/gdb/history"

export COMPDUMPFILE="${XDG_CACHE_HOME:-$ZDOTDIR}/zsh/zcompdump"

export RIPGREP_CONFIG_PATH="${XDG_CONFIG_HOME:-$HOME/.config}"/ripgrep.conf

export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/pass"

fpath=($ZHOME/.zsrc $fpath)

# Set the Less input preprocessor.
# Try both `lesspipe` and `lesspipe.sh` as either might exist on a system.
if (( $#commands[(i)lesspipe(|.sh)] )); then
    export LESSOPEN="| /usr/bin/env $commands[(i)lesspipe(|.sh)] %s 2>&-"
fi
