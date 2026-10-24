# sed: Editing Lines

Deleting, inserting and replacing whole lines. Output goes to the screen; the file is unchanged. Run every example from the `04-text-processing/` folder; the sample files are in `sample-data/`.

## Delete a line

```bash
sed '1d' sample-data/users.csv
```

## Delete a range of lines

```bash
sed '2,4d' sample-data/users.csv
```

## Delete the last line

```bash
sed '$d' sample-data/users.csv
```

## Delete lines matching a pattern

```bash
sed '/Sales/d' sample-data/users.csv
```

## Delete comments and blank lines

```bash
sed '/^#/d; /^$/d' sample-data/app.conf
```

## Delete leading whitespace

```bash
echo '    indented text' | sed 's/^[ \t]*//'
```

## Delete trailing whitespace

```bash
printf 'text   \n' | sed 's/[ \t]*$//' | cat -A
```

## Insert a line before line 1

```bash
sed '1i # Employee list' sample-data/users.csv
```

## Append a line after the last line

```bash
sed '$a 7,Giulia,Sales,58000,Bologna' sample-data/users.csv
```

## Insert a line before matching lines

```bash
sed '/^# Logging/i # ----------' sample-data/app.conf
```

## Append a line after matching lines

```bash
sed '/^port=/a timeout=30' sample-data/app.conf
```

## Replace a whole line

```bash
sed '/^debug=/c debug=false' sample-data/app.conf
```

## Keep only the first 3 lines (like head)

```bash
sed '3q' sample-data/users.csv
```

## See also

- [Basics](basics.md)
- [In-place Editing](in-place.md)
