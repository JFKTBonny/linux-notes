# cut

Extracts columns (fields), characters or bytes from each line. Fast and simple, but only supports a single-character delimiter.

Run every example from the `04-text-processing/` folder; the sample files are in `sample-data/`.

## Pages

- [Fields](fields.md) — columns separated by a delimiter
- [Characters and Bytes](characters.md) — fixed positions in a line

## Syntax

```text
cut -d'DELIMITER' -f FIELDS FILE
cut -c POSITIONS FILE
```

## Range notation

| Notation | Meaning |
|---|---|
| `2` | Field 2 only |
| `1,3` | Fields 1 and 3 |
| `2-4` | Fields 2 to 4 |
| `-3` | Fields 1 to 3 |
| `3-` | Field 3 to the end |

## Limitations

- The delimiter must be one character; multiple spaces count as multiple fields. Use [awk](../awk/README.md) for whitespace-separated data.
- Fields are always printed in file order: `-f3,1` prints field 1 then 3.
