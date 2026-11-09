# RFC mirror

This repository mirrors the RFC Editor's `everything-ftp` rsync module in
[`mirror/`](mirror/). See the [RFC Editor's rsync instructions](https://www.rfc-editor.org/series/rfc-download/#download-rfcs-using-rsync)
for the module list and source of truth. Mirrored documents remain subject to
their original terms of use; see [How Can I Use RFCs?](https://www.rfc-editor.org/series/rfc-use/).

## Updates

The update workflow runs daily and can also be started manually from the Actions
tab. It syncs the complete module, including deletions, and commits changes to
the default branch. The workflow needs Actions enabled and `contents: write`
permission, and any branch protection must allow the automation to push.

To update a checkout locally, install `rsync` and run:

```sh
./update.sh
```

The script replaces the contents of `mirror/` with the upstream contents; do
not keep local files there. It does not commit or push changes. Git does not
preserve empty directories or all filesystem metadata. GitHub's file and
repository size limits may prevent a full mirror from being pushed.

## Contributions

This is an automated mirror, not a place for contributed content. Please open
an issue to report a problem; do not submit pull requests. Repository
administrators should disable optional features such as Discussions, Wiki and
Projects, restrict write access to maintainers and the update automation, and
keep Issues enabled. GitHub does not provide a switch to disable pull requests.
