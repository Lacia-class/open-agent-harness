# Agent Runtime Adapter

Use this adapter to map the public harness to a specific agent runtime.

Core protocols should only refer to generic roles:

- main agent
- worker agent
- review agent
- external team
- human approver

Runtime-specific names, commands, process managers, model selectors, or team orchestration tools belong in this adapter.

## Capability Contract

```text
spawn_worker(task, scope?) -> worker_id
send(worker_id, message) -> status
wait(worker_id, timeout?) -> result
close(worker_id) -> status
current_context() -> runtime metadata
available_tools() -> tool list
```

## Safety Rules

- Worker reports are candidate evidence, not final PASS.
- Runtime-specific context inheritance must be documented.
- If worker isolation is required but unavailable, mark the experiment PARTIAL instead of pretending a clean control exists.
- The public core must not require one vendor, model, or desktop application.

