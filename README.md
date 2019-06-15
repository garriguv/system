# system

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
