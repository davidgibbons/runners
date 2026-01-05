# n8n Runners Image (Extended)

Extends `n8nio/runners` with Python dependencies:
- `lxml`
- `teemup` from `https://github.com/juniorguru/teemup`

## Build locally

```sh
docker build -t runners-test .
```

## GHCR image

The GitHub Action builds on every PR and pushes on `main` to:
- `ghcr.io/davidgibbons/runner:latest`
- `ghcr.io/davidgibbons/runner:<upstream-tag>`
