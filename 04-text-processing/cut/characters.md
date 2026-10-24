# cut: Characters and Bytes

Extracting fixed positions from each line. Run every example from the `04-text-processing/` folder; the sample files are in `sample-data/`.

## First 12 characters of each line

```bash
cut -c1-12 sample-data/access.log
```

## Characters 5 to 10

```bash
cut -c5-10 sample-data/users.csv
```

## A single character

```bash
cut -c1 sample-data/users.csv
```

## From character 20 to the end

```bash
cut -c20- sample-data/access.log
```

## Several positions

```bash
cut -c1,3,5 sample-data/users.csv
```

## Extract a date from a fixed-format string

```bash
echo '2026-10-24T09:08:00' | cut -c1-10
```

## Extract the time

```bash
echo '2026-10-24T09:08:00' | cut -c12-16
```

## Bytes instead of characters

```bash
cut -b1-5 sample-data/users.csv
```

`-b` counts bytes. It is the same as `-c` for plain ASCII, but differs for accented or non-Latin characters.

## See also

- [Fields](fields.md)
