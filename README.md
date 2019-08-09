# Gettext Issue Reproduction Sample

## Background

https://github.com/elixir-lang/gettext/issues/206

## Summary

Gettext generates code in a way that strings with plural forms and interpolated `count` have the count rematched.

## Reproduction:

    $ mix deps.get
    $ mix dialyzer
