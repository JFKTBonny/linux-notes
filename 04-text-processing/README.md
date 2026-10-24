# Text Processing

Three tools for slicing and transforming text from files or pipes.

Run every example from the `04-text-processing/` folder; the sample files are in `sample-data/`.

```bash
cd 04-text-processing
```

## Which tool to use

| Tool | Best for | Think of it as |
|---|---|---|
| [cut](cut/README.md) | Extracting columns with a single, fixed delimiter | Scissors |
| [sed](sed/README.md) | Find and replace, deleting or inserting lines | Search-and-replace |
| [awk](awk/README.md) | Columns plus logic: filters, sums, counts, reports | A small programming language |

Rule of thumb: try `cut` first, use `sed` to change text, use `awk` when you need conditions or math.

## The same task with each tool

Print the second column (names) of the CSV:

```bash
cut -d',' -f2 sample-data/users.csv
```

```bash
awk -F',' '{print $2}' sample-data/users.csv
```

```bash
sed 's/^[^,]*,\([^,]*\).*/\1/' sample-data/users.csv
```

`cut` is shortest, `awk` is most flexible, `sed` is the wrong tool for this job.

## Combining them in a pipe

Names of Engineering staff, uppercased:

```bash
awk -F',' '$3 == "Engineering"' sample-data/users.csv | cut -d',' -f2 | sed 's/.*/\U&/'
```

## Contents

- [sample-data/](sample-data/README.md) — files used by the examples
- [cut/](cut/README.md) — fields, characters, bytes
- [sed/](sed/README.md) — print, substitute, delete, insert, in-place editing
- [awk/](awk/README.md) — fields, patterns, variables, calculations, scripts
