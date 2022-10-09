# Defines methods used in multiple scripts. It is coded in POSIX shell.

# The exit error code if there is a problem with the execution of the test
# suite (wrong arguments, missing files...). This is to denote the exit values
# from the diff command.
ERROR_TEST=113

# Get the full path for $1. $1 must exist.
# WARNING: must be called before any `cd`.
get_full_path() {
    if [ -z "${1%%/*}" ]; then
        printf "%s" "$1"
    else
        # `readlink` and `readpath` are not always available.
        path="$(cd "$(dirname "$1")"; pwd)/$(basename "$1")"
        printf "%s" "$path"
    fi
}
