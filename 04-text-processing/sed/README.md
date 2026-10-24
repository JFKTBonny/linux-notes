# sed

Stream editor: reads text line by line, applies commands, and prints the result. It does not change the file unless you use `-i`.

Run every example from the `04-text-processing/` folder; the sample files are in `sample-data/`.

## Pages

- [Basics](basics.md) — printing and substitution
- [Editing Lines](editing.md) — delete, insert, append, change
- [In-place Editing](in-place.md) — modifying files safely
- [Advanced](advanced.md) — regex groups, ranges, multiple commands

## Syntax

```text
sed 'COMMAND' FILE
sed -n 'COMMAND' FILE
sed -i 'COMMAND' FILE
```

## Common commands

| Command | Action |
|---|---|
| `s/old/new/` | Substitute first match on each line |
| `s/old/new/g` | Substitute all matches |
| `p` | Print |
| `d` | Delete |
| `i\ text` | Insert line before |
| `a\ text` | Append line after |
| `c\ text` | Replace whole line |

## Addressing (which lines a command applies to)

| Address | Meaning |
|---|---|
| `3` | Line 3 |
| `$` | Last line |
| `2,4` | Lines 2 to 4 |
| `/regex/` | Lines matching regex |
| `/start/,/end/` | From a matching line to another |
| `3!` | Every line except 3 |

## Key options

| Option | Meaning |
|---|---|
| `-n` | Don't print lines automatically (use with `p`) |
| `-i` | Edit the file in place |
| `-i.bak` | Edit in place, keep a `.bak` backup |
| `-E` | Extended regex (`+`, `?`, `()`, `|` without backslashes) |
| `-e` | Add another command |
