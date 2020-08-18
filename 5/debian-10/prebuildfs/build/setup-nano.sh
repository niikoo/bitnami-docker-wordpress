#!/bin/bash

# Fix nano error messages
mkdir -p /.local
touch /.local/.nano_history
chmod -R g+rwX /.local
