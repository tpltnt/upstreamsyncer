# upstreamsyncer

A shell script to keep your master branches in sync with upstream.
It checks out the master branch locally, pulls upstream, and pushes
the changes retrieved to origin.

# usage

The script is run by executing `$ ./upstreamsyncer.sh`.
A path to a repository can be passed as an optional
argument: `$ ./upstreamsyncer.sh PATH_TO_REPOSITORY`.

# references
* [git](https://git-scm.com/)
