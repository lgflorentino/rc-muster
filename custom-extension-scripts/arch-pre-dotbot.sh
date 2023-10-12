#!/usr/bin/env zsh

echo "Running $(basename $0)"

DEPS=( \
    clang \
    fd \
    git \
    lua-language-server \
    python-lsp-server \
    python-lsp-black \
    python-mccabe \
    python-pycodestyle \
    python-pydocstyle \
    python-pyflakes \
    python-rope \
    ripgrep \
    rust-analyzer \
    texlab \
    tmux \
    tilix \
    zls \
)
pacman -Q $DEPS

[[ $? -gt 0 ]] && echo "Some dependencies are not installed yet. Please install before continuing." && exit 1

echo "Exiting $(basename $0)"

:<<REPOS
clang                       => https://github.com/llvm/llvm-project
fd                          => https://github.com/sharkdp/fd
git                         => https://github.com/git/git
lua-language-server         => https://github.com/LuaLS/lua-language-server
python-lsp-server           => https://github.com/python-lsp/python-lsp-server
python-lsp-black            => https://github.com/python-lsp/python-lsp-black
python-mccabe               => https://github.com/PyCQA/mccabe
python-pycodestyle          => https://github.com/PyCQA/pycodestyle
python-pydocstyle           => https://github.com/PyCQA/pydocstyle
python-pyflakes             => https://github.com/PyCQA/pyflakes
python-rope                 => https://github.com/python-rope/rope
texlab                      => https://github.com/latex-lsp/texlab
ripgrep                     => https://github.com/BurntSushi/ripgrep
rust-analyzer               => https://github.com/rust-lang/rust-analyzer
tilix                       => https://github.com/gnunn1/tilix
zls                         => https://github.com/zigtools/zls

REPOS
