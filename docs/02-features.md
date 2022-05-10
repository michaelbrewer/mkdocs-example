# Features

Cool features for mkdocs

## Admonitions

Admonitions, also known as _call-outs_ and see [MKDocs: Admonitions](https://squidfunk.github.io/mkdocs-material/reference/admonitions/){target="_blank"}

```yaml
markdown_extensions:
  - admonition
  - pymdownx.details
  - pymdownx.superfences
```

!!! note "Admonitions"
    Admonitions are a way to communicate important information to the reader.

??? tip "Can be collasped"
    Admonitions are a way to communicate important information to the reader.

Example markdown

```markdown
???+ note

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

## Code Blocks

Code blocks also supports adding a title, highlighting specific lines and showing line numbers
and many more features are supported: [MKDocs: Code blocks](https://squidfunk.github.io/mkdocs-material/reference/code-blocks/){target="_blank"}

```python title="app.py" hl_lines="11 12"
def handler(event, context):
    """Lambda handler

    Parameters
    ----------
    event : Dict[str, Any]
        Lambda event
    context : LambdaContext
        Lambda context
    """
    print(f"Event: {event}")
    print(f"Context: {context}")
    return {"message": "Hello, world!"}
```

## Attribute Lists

The Attribute Lists extension allows to add HTML attributes and CSS classes see [MKDocs: Attribute Lists](https://squidfunk.github.io/mkdocs-material/setup/extensions/python-markdown/?h=attr#attribute-lists){target="_blank"}

```markdown
[MKDocs: Attribute Lists](https://squidfunk.github.io/mkdocs-material/setup/extensions/python-markdown/?h=attr#attribute-lists){target="_blank"}
```

## Diagrams

### Class diagrams

``` mermaid
classDiagram
  Person <|-- Student
  Person <|-- Professor
  Person : +String name
  Person : +String phoneNumber
  Person : +String emailAddress
  Person: +purchaseParkingPass()
  Address "1" <-- "0..1" Person:lives at
  class Student{
    +int studentNumber
    +int averageMark
    +isEligibleToEnrol()
    +getSeminarsTaken()
  }
  class Professor{
    +int salary
  }
  class Address{
    +String street
    +String city
    +String state
    +int postalCode
    +String country
    -validate()
    +outputAsLabel()  
  }
```

### Sequence

``` mermaid
sequenceDiagram
  Alice->>John: Hello John, how are you?
  loop Healthcheck
      John->>John: Fight against hypochondria
  end
  Note right of John: Rational thoughts!
  John-->>Alice: Great!
  John->>Bob: How about you?
  Bob-->>John: Jolly good!
```

## Data tables

[MKDocs: Data tables](https://squidfunk.github.io/mkdocs-material/reference/data-tables/){target="_blank"}

| Method      | Description                          |
| ----------- | ------------------------------------ |
| `GET`       | :material-check:     Fetch resource  |
| `PUT`       | :material-check-all: Update resource |
| `DELETE`    | :material-close:     Delete resource |

## Task lists

[MKDocs: Task lists docs](https://squidfunk.github.io/mkdocs-material/reference/lists/#using-task-lists){target="_blank"}

- [x] Lorem ipsum dolor sit amet, consectetur adipiscing elit
- [ ] Vestibulum convallis sit amet nisi a tincidunt
    - [x] In hac habitasse platea dictumst
    - [x] In scelerisque nibh non dolor mollis congue sed et metus
    - [ ] Praesent sed risus massa
- [ ] Aenean pretium efficitur erat, donec pharetra, ligula non scelerisque
