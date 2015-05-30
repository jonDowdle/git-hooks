# git-hooks
Useful hooks for use in Git

## Usage

It helps to place these in a folder and set your `GIT_TEMPLATE_DIR` environment variable to point to that directory. For example:

```
# In ~/.bashrc
export GIT_TEMPLATE_DIR="$HOME/.git-template/"

# Then after running: source ~/.bashrc
mkdir -p $GIT_TEMPLATE_DIR && cd $GIT_TEMPLATE_DIR
git clone git@github.com:jonDowdle/git-hooks.git $GIT_TEMPLATE_DIR
```


Either create a link or copy the contents of the file into one of the hook names (where applicable). They are:

* applypatch-msg
* commit-msg
* post-update
* pre-applypatch
* pre-commit
* pre-push
* pre-rebase
* prepare-commit-msg
* update


### Example


`ln -s .git/hooks/pre-commit/reject-merge-markers.sh .git/hooks/pre-commit`
