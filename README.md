# system

Experimenting with [clear linux] and [i3wm]. Also redoing my dotfiles for the 3rd time.

## vim

### Packages

For more information, check out this [blog post](https://shapeshed.com/vim-packages/).

#### Add a package

    ./scripts/vim-add-package.sh <package>

#### Update packages

    make vim-update

#### Remove a package

    ./scripts/vim-remove-package.sh <package>

#### Package documentation

After installing or updating a package, make sure to re-generate the
documentation using:

    :helptags ALL

[clear linux]: https://clearlinux.org
[i3wm]: https://i3wm.org
