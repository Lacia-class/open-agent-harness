# Skills

This directory contains skill wrappers for runtimes that discover skills from a `skills/` folder.

The installable skill packages are self-contained. They may copy repository-level protocol sources into their own `references/` directory so a user can install a single skill folder without preserving the full repository layout.

## Important

Copying `skills/open-agent-harness/` by itself is supported.

Recommended installation:

- copy or symlink `skills/open-agent-harness/` into the runtime skills directory.
