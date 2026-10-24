# HTTP Testing with curl

Requesting web pages and APIs from the terminal.

## Fetch a page

```bash
curl https://example.com
```

## Show only response headers

```bash
curl -I https://example.com
```

## Follow redirects

```bash
curl -L http://example.com
```

## Verbose (TLS handshake, headers, everything)

```bash
curl -v https://example.com
```

## Send JSON with POST

```bash
curl -X POST https://api.example.com/items -H "Content-Type: application/json" -d '{"name":"test"}'
```

## Measure response time

```bash
curl -o /dev/null -s -w "Total: %{time_total}s\n" https://example.com
```

## Download a file

```bash
wget https://example.com/file.zip
```
