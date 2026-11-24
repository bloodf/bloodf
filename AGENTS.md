# Repository instructions

## Privacy

Keep the owner's private setup out of source, tests, fixtures, docs, commits,
branch names, issues, pull requests and comments. Do not include machine names,
home or worktree paths, private network details, service ports or hostnames,
thread and task IDs, personal email or provider accounts, quota or credit data,
device identifiers, Wi-Fi names, or secrets.

Use RFC 5737 addresses such as `192.0.2.10`, example domains, `printer-1`,
`<serial>`, and `$HOME/...`. Keep hardware findings and redact the identifying
details. Run `sh scripts/check-privacy.sh` before submitting changes.
