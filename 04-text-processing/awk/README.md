# awk

A small language for column-based text. It splits each line into fields (`$1`, `$2`, ...) and runs `pattern { action }` rules on them.

Run every example from the `04-text-processing/` folder; the sample files are in `sample-data/`.

## Pages

- [Basics](basics.md) — printing fields and separators
- [Patterns](patterns.md) — filtering lines
- [Built-in Variables](variables.md) — NR, NF, FS, OFS
- [Calculations](calculations.md) — sums, averages, counts, grouping
- [Programs](programs.md) — BEGIN/END, printf, if, loops, script files
- [scripts/](scripts/) — ready-to-run `.awk` files

## Syntax

```text
awk 'pattern { action }' FILE
awk -F'DELIMITER' 'pattern { action }' FILE
awk -f script.awk FILE
```

Either part is optional: no pattern runs on every line; no action prints the line.

## Fields

| Symbol | Meaning |
|---|---|
| `$0` | The whole line |
| `$1`, `$2` ... | Field 1, field 2 ... |
| `$NF` | Last field |
| `$(NF-1)` | Second-to-last field |

## Built-in variables

| Variable | Meaning |
|---|---|
| `NR` | Current line number (across all files) |
| `FNR` | Line number in the current file |
| `NF` | Number of fields on the line |
| `FS` | Input field separator (default: whitespace) |
| `OFS` | Output field separator (default: space) |
| `FILENAME` | Current file name |

By default awk splits on any run of spaces or tabs, which is why it handles messy command output better than `cut`.
