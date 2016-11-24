INSTALL_PATH    ?= $$HOME
NEOBUNDLE_REPO  ?= https://github.com/Shougo/neobundle.vim.git

.PHONY: all install-dotfiles install-neobundle

all: install-dotfiles install-neobundle

clone-git-repo-unless-exist = @(cd ${INSTALL_PATH} ; [ -d $(2) ] || git clone $(1) $(2))

install-dotfiles:
	# add aliases for dotfiles
	for file in $(shell find $(CURDIR) -name ".*" -maxdepth 1 -not -name ".gitignore" -not -name ".travis.yml" -not -name ".git" -not -name ".*.swp" -not -name ".travis.yml" -not -name ".irssi" -not -name ".gnupg"); do \
		f=$$(basename $$file); \
		ln -sfn $$file $(HOME)/$$f; \
	done;

install-neobundle:
	$(call clone-git-repo-unless-exist,${NEOBUNDLE_REPO},.vim/bundle/neobundle.vim)
