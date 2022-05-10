# Instructions

This is the initial blank slate.

## Steps so far

Install `mkdocs-material` as a dev dependency.

```shell
pipenv install --dev mkdocs-material
```

Bootstrap the project with `mkdocs new`.

```shell
pipenv run mkdocs new .
```

Initial configuration is done in the `mkdocs.yml` file.

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
