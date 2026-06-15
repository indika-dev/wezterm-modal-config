### Summary

Describe the WezTerm configuration change and the user-facing workflow it
affects.

### Motivation

Explain why this belongs in the main config repo. Focus on config composition,
appearance, font, GPU, tab bar, events, mappings, opts, overrides, or platform
setup.

### Config Areas Changed

- [ ] `wezterm.lua`
- [ ] `config/`
- [ ] `events/`
- [ ] `mappings/`
- [ ] `opts/`
- [ ] `overrides/`
- [ ] `utils/`
- [ ] `plugs/`
- [ ] Other:

### Behavior

Describe how the config behaves after this change, including startup behavior,
reload behavior, default values, platform-specific handling, and failure cases.

### Manual Validation

Describe the manual WezTerm validation performed.

- [ ] Reloaded config in an existing WezTerm window.
- [ ] Restarted WezTerm from a clean launch.
- [ ] Verified relevant keybindings or command palette entries.
- [ ] Verified platform-specific behavior where applicable.
- [ ] Not applicable:

### Compatibility

- [ ] Non-breaking
- [ ] Potentially breaking
- [ ] Breaking

If this is potentially breaking or breaking, explain the migration path.

### Documentation

Describe README, wiki, prompt, or inline documentation updates made for this
change.

### Checklist

- [ ] The change is scoped to the main config repo.
- [ ] Plugin source changes are not mixed into this pull request.
- [ ] Public config options or keybindings are documented, if applicable.
- [ ] Startup and reload behavior were considered.
- [ ] Unrelated dirty files were not committed.

