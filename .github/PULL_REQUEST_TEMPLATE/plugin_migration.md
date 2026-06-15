### Summary

Describe the plugin migration or integration change.

### Motivation

Explain why the behavior belongs in a standalone plugin, a `plugs/*.lua` wrapper,
or the main config repo.

### Plugin Scope

- [ ] `plugs/`
- [ ] `plugins/<name>.wz`
- [ ] `opts/`
- [ ] `mappings/`
- [ ] `events/`
- [ ] `utils/`
- [ ] `.meta/`
- [ ] Documentation

### Migration Details

Describe what moved, what stayed in the main config, and what compatibility path
exists for existing config usage.

```lua
-- before / after usage sketch, if helpful
```

### Runtime Behavior

Describe startup, reload, persistence, keybinding, command palette, or plugin
dependency behavior affected by this change.

### Validation

- [ ] Reloaded config in an existing WezTerm window.
- [ ] Restarted WezTerm from a clean launch.
- [ ] Verified plugin require path through `plugs/*.lua`.
- [ ] Verified old local utility references were removed or intentionally kept.
- [ ] Ran focused lint/tests where available.

### Compatibility

- [ ] Non-breaking
- [ ] Potentially breaking
- [ ] Breaking

If this is potentially breaking or breaking, explain the migration path.

### Checklist

- [ ] The migration keeps plugin requires centralized in `plugs/`.
- [ ] Consumer files do not call `wezterm.plugin.require()` directly.
- [ ] Related `.meta` and `opts` files were checked.
- [ ] Documentation and examples use the new plugin path.
- [ ] Unrelated dirty files were not committed.

