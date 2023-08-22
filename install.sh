#!/usr/bin/env zsh

set -e

EXT_SH_D="$(pwd)/custom-extension-scripts"

# Query the system to get unix kernel type
KERNEL_TYPE="$(uname -a | cut -d ' ' -f 1 | grep 'Darwin\|Linux')"
if [[ $KERNEL_TYPE != 'Darwin' && $KERNEL_TYPE != 'Linux' ]] ; then echo "Unknown kernel found with 'uname -a'." && exit 1 ; fi

# Query the host linux install to see what we are running on
if [[ $KERNEL_TYPE = 'Linux' ]] ; then
    [[ -f '/etc/os-release' ]] && OS="$(cat /etc/os-release | grep '^ID=' | cut --delimiter=\= -f 2)"
    [[ $? -gt 0 ]] && echo "No /etc/os-release file found." && exit 1
elif [[ $KERNEL_TYPE = 'Darwin' ]] ; then
    OS="osx"
fi

# These scripts hook up some shell commands to run pre-dotbot and post-dotbot
[[ -n $OS ]] && PRE_DOTBOT_SH="$EXT_SH_D/$OS-pre-dotbot.sh" \
    POST_DOTBOT_SH="$EXT_SH_D/$OS-post-dotbot.sh"

# run the custom pre script. OS dependant
[[ ! -f $PRE_DOTBOT_SH ]] && echo "No file exists: $PRE_DOTBOT_SH. Skipping..." || $PRE_DOTBOT_SH

CONFIG="install.conf.unix.yaml"
DOTBOT_DIR="dotbot"

DOTBOT_BIN="bin/dotbot"
BASEDIR="$(cd "$(dirname "${ZSH_SOURCE[0]}")" && pwd)"

cd "${BASEDIR}"
git -C "${DOTBOT_DIR}" submodule sync --quiet --recursive
git submodule update --init --recursive "${DOTBOT_DIR}"

"${BASEDIR}/${DOTBOT_DIR}/${DOTBOT_BIN}" -d "${BASEDIR}" -c "${CONFIG}" "${@}"


[[ ! -f $POST_DOTBOT_SH ]] && echo "No file exists: $POST_DOTBOT_SH. Skipping..." || $POST_DOTBOT_SH
