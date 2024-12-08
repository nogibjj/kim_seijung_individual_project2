# Rust
version:
	echo "Rust command-line utility versions:"
	rustc --version              # Rust compiler
	cargo --version              # Rust package manager
	rustfmt --version            # Rust code formatter
	rustup --version             # Rust toolchain manager
	clippy-driver --version      # Rust linter

install:
	cargo install --path ./sqlite

check:
	cargo check --manifest-path ./sqlite/Cargo.toml

format:
	cargo fmt --quiet --manifest-path ./sqlite/Cargo.toml

lint:
	cargo clippy --quiet --manifest-path ./sqlite/Cargo.toml

test:
	cargo test --quiet --manifest-path ./sqlite/Cargo.toml

run:
	cd sqlite && cargo run --release create employee

release:
	cargo build --release --manifest-path ./sqlite/Cargo.toml

all: format lint test run
