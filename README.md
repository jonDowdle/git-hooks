# git-hooks
Useful hooks for use in Git

## Usage

Either create a link or copy the contents of the file into one of the hook names. They are:

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
