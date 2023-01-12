# Catalyst Standards

<!-- markdownlint-disable MD013 -->
[![GitHub Pages](https://github.com/input-output-hk/catalyst-standards/actions/workflows/gh-pages.yml/badge.svg)](https://github.com/input-output-hk/catalyst-standards/actions/workflows/gh-pages.yml)
[![Markdown Lint](https://github.com/input-output-hk/catalyst-standards/actions/workflows/mdlint-changed.yml/badge.svg)](https://github.com/input-output-hk/catalyst-standards/actions/workflows/mdlint-changed.yml)
[![Catalyst Standards are released under either of Apache License, Version 2.0 or MIT license at your option..](https://img.shields.io/badge/license-MIT%2FApache--2.0-blue)](https://github.com/input-output-hk/catalyst-standards#license)
[![PRs welcome!](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/input-output-hk/catalyst-standards/blob/main/CODE_OF_CONDUCT.md)
<!-- markdownlint-enable MD013 -->

## Content

- [Catalyst Standards](#catalyst-standards)
  - [Content](#content)
  - [What's inside?](#whats-inside)
  - [Requirements](#requirements)
  - [Development Environment](#development-environment)
    - [Prerequisites](#prerequisites)
    - [Install Extra Packages/Tools](#install-extra-packagestools)
  - [Building Documentation](#building-documentation)
  - [Writing Documentation](#writing-documentation)
    - [Diagrams rendered by kroki.io](#diagrams-rendered-by-krokiio)
    - [Material Design admonishments](#material-design-admonishments)
  - [Support](#support)
  - [License](#license)

## What's inside?

Standards specific to Project Catalyst.

This is where new catalyst standards are developed before they are promoted to
CIPs.

## Requirements

## Development Environment

### Prerequisites

We use the [mdbook](https://rust-lang.github.io/mdBook/index.html) tool to
prepare and format these standards.

- [Rust](https://www.rust-lang.org/tools/install)

### Install Extra Packages/Tools

This only needs to be done once when the development environment is created.

1. `cargo install cargo-binstall --locked` : see <https://github.com/cargo-bins/cargo-binstall>
2. `cargo binstall --no-confirm cargo-make` : see <https://github.com/sagiegurari/cargo-make>
3. `cargo make install-prereqs`

## Building Documentation

If you have edited any of the documentation, then it needs to be updated by running:

```sh
cargo make build-docs
```

This will build a local copy of the documentation in `./book/html` which can be viewed.

It is also possible to build a live version of the documentation which updates
as edited by running:

```sh
cargo make view-docs
```

## Writing Documentation

Documents are written as Markdown in the [CommonMark](https://commonmark.org/)
dialect and must be linted with
[markdownlint](https://github.com/DavidAnson/markdownlint). This is used to
ensure consistent format and avoidance of problematic markdown constructs.

The following extensions to `mdbook` are enabled to provide richer documentation.

NOTE: Conformance with
[markdownlint](https://github.com/DavidAnson/markdownlint) is enforced by CI.
The [./.markdownlint.json](.markdownlint.json) contains our customizations to
the markdown lint rules. Edits to this file from external contributors must be
in their own PR, do not include them in a PR which edits documentation. This
enables us to review proposed format changes independently on their merits.

- Editor Support
  - [VS Code](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)

### Diagrams rendered by [kroki.io](https://kroki.io)

See
[mdBook Kroki Preprocessor](https://lib.rs/crates/mdbook-kroki-preprocessor) for
details.

- Editor Support
  - [VS Code](https://marketplace.visualstudio.com/items?itemName=pomdtr.markdown-kroki)

### [Material Design](https://material.io/design) admonishments

See [mdBook Admonishments](https://lib.rs/crates/mdbook-admonish).

## Support

Post issues and feature requests on the GitHub [issue tracker](https://github.com/input-output-hk/catalyst-core/issues).

## License

Licensed under either [Apache License](LICENSE-APACHE)](LICENSE-APACHE), Version
2.0 or [MIT license](LICENSE-MIT) at your option.

Unless you explicitly state otherwise, any Contribution intentionally submitted
for inclusion in this crate by you, as defined in the Apache-2.0 license, shall
be dual licensed as above, without any additional terms or conditions.
