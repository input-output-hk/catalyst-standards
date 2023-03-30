# Implementing CIP-30/CIP-62

These are the suggested guidelines to implementing CIP-30 and CIP-62.

1. Use `{"x-cip":62}` to refer to the draft CIP-62 until ratified.
2. Convert namespace from `governance` to `catalyst`.
3. Don't use CIP-62 enable, use CIP-30 enable instead.
4. Enable `[{"cip":30}, {"x-cip":62}]` if .enable() is called with no parameters.
