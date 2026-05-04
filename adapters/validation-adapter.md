# Validation Adapter

Use this adapter to describe how a runtime validates artifacts.

Core protocols say what must be proven. This adapter says how a local environment can prove it.

## Capability Contract

```text
validate_text(path) -> report
validate_schema(path, schema?) -> report
validate_command(command) -> report
validate_render(path) -> report
validate_browser(url_or_file) -> report
validate_external_probe(target) -> report
```

## Configuration

```text
adapter_name:
supported_artifacts:
commands:
required_tools:
risk_level:
network_required:
human_approval_required:
```

## Rules

- A validator must name the artifact it inspected.
- A validator must distinguish real artifacts from summaries.
- Missing validators downgrade the result to PARTIAL, not PASS.
- Project-specific validators stay in project packs or private packs.

