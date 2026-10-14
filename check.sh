#!/bin/bash
# Round 3, fix 1: fail the build if any [ADD ...] placeholder reaches the DOM.
cd "$(dirname "$0")"
if grep -q '\[ADD' index.html; then
  echo "FAIL: [ADD placeholder] found in index.html"
  grep -n '\[ADD' index.html
  exit 1
fi
echo "OK: no [ADD ...] placeholders in index.html"
