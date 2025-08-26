#!/bin/bash

ENV=$1

echo "Running build for environment: $ENV"

case "$ENV" in
  dev)
    echo "Setting up development environment..."
    # Add dev-specific commands here
    ;;
  staging)
    echo "Setting up staging environment..."
    # Add staging-specific commands here
    ;;
  prod)
    echo "Setting up production environment..."
    # Add prod-specific commands here
    ;;
  *)
    echo "Unknown environment: $ENV"
    exit 1
    ;;
esac

echo "Build complete!" > build_output.txt
