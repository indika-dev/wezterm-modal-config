### Summary

Describe the bug fixed and the user-visible WezTerm behavior that changed.

### Reproduction

Provide the smallest setup or workflow that reproduced the issue.

```lua
-- relevant config, mapping, event, or plugin setup
```

### Root Cause

Explain why startup, reload, event handling, keybindings, rendering, persistence,
plugin loading, or platform behavior was wrong.

### Fix

Describe the implementation change and why it fixes the problem.

### Regression Coverage

Describe any test, lint, manual smoke, or config reload check added or performed.

### Manual Validation

- [ ] Reloaded config in an existing WezTerm window.
- [ ] Restarted WezTerm from a clean launch.
- [ ] Verified relevant keybindings, events, status/tab rendering, or plugin state.
- [ ] Checked debug overlay/log output where relevant.
- [ ] Not applicable:

### Compatibility Impact

- [ ] Non-breaking
- [ ] Potentially breaking
- [ ] Breaking

If this changes behavior intentionally, explain why the new behavior is correct.

### Checklist

- [ ] The fix is scoped to the reported behavior.
- [ ] Startup and reload behavior were considered.
- [ ] Documentation was updated if user-facing behavior changed.
- [ ] Unrelated dirty files were not committed.

