#!/bin/bash
# Entry point used by the autograder. Runs the visible test suite for this assignment.

# Install Rust if it is not already available
if ! command -v cargo > /dev/null 2>&1; then
  curl https://sh.rustup.rs -sSf | sh -s -- -y --profile minimal
  source "$HOME/.cargo/env"
fi

set -e  # Exit immediately if any command fails

echo "Using $(cargo --version)"
cargo test --all-targets
