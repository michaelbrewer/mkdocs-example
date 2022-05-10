# Instructions

This is the initial blank slate.

## Steps so far

### Basic install

Install `mkdocs-material` as a dev dependency.

```shell
pipenv install --dev mkdocs-material
```

Bootstrap the project with `mkdocs new`.

```shell
pipenv run mkdocs new .
```

Initial configuration is done in the `mkdocs.yml` file.

### Add material theme

Enable the Material theme in the `mkdocs.yml` file.

```yaml
theme:
  name: material
```

Add SuperFences

```yaml
markdown_extensions:
  - pymdownx.superfences
```

Add git revision date

```shell
pipenv install --dev mkdocs-git-revision-date-plugin
```

```yaml
plugins:
  - git-revision-date
```

### Deploying github pages

Ensure github actions has read and write access to the repository.

![Github actions permissions](./media/github-actions-light.png#gh-light-mode-only)
![Github actions permissions](./media/github-actions-dark.png#gh-dark-mode-only)

Add `.github/workflows/pages.yml` to the repository

```yaml
name: ci 
on:
  push:
    branches:
      - main
    paths:
      - '.github/workflows/pages.yml'
      - 'docs/*'
      - 'mkdocs.yml'
      - 'Pipfile.lock'
      - 'Makefile'

jobs:
  deploy:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v3

    - name: Set up Python 3.9
      uses: actions/setup-python@v3
      with:
        python-version: "3.9"

    - name: Install latest pipenv
      run: pip install -U pip pipenv

    - name: Install mkdocs dependencies
      run: make dev

    - name: Deploy to github pages
      run: make deploy
```
