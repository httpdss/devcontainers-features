# Struct Devcontainer Feature

This feature installs the `struct` Python module from the official GitHub repository using pip.

## Usage

Add the following to your `devcontainer.json`:

```json
"features": {
  "ghcr.io/your-org/devcontainers-features/struct:1.0.0": {}
}
```

## What it does

- Installs the `struct` Python module from https://github.com/httpdss/struct.git using pip.

## Requirements

- Python and pip must be available in the container.

## Source

- [struct GitHub repository](https://github.com/httpdss/struct)
