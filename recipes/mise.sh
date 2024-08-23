# /bin/bash

set -ex

curl https://mise.run | sh
eval "$(~/.local/bin/mise activate bash)"

sudo apt get update -qq

# ruby dependencies
sudo apt-get install -yqq --no-install-recommends autoconf patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev

# node dependencies
sudo apt-get install -yqq --no-install-recommends python3 g++ make python3-pip

# golang dependencies
sudo apt-get install -yqq --no-install-recommends coreutils curl

# python dependencies
sudo apt-get install -yqq --no-install-recommends build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev curl git libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

mise use --yes --global ruby@3.3.4
mise use --yes --global node@22.7.0
mise use --yes --global golang@1.23.0
mise use --yes --global python@3.12.5
mise use --yes --global pipx@1.7.0

# ruby packages
gem install erb_lint mdl rubocop solargraph

# node packages
npm --prefix ~/.local/ --save-dev install -g typescript prettier eslint eslint-config-prettier eslint-plugin-react eslint-plugin-react-hooks stylelint stylelint-config-standard sql-formatter @vtsls/language-server markdownlint markuplint buf @biomejs/biome

# golang packages
go install github.com/junegunn/fzf@latest
# go install github.com/lighttiger2505/sqls@latest
go install github.com/mattn/efm-langserver@latest
go install github.com/rhysd/actionlint/cmd/actionlint@latest
go install github.com/x-motemen/ghq@latest
go install github.com/yoheimuta/protolint/cmd/protolint@latest
go install golang.org/x/tools/cmd/goimports@latest
go install golang.org/x/tools/gopls@latest
# go install github.com/lemonade-command/lemonade@latest

# python packages
pipx install awscli sqlfluff yamllint
