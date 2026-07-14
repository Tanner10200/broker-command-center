# Project: Broker Command Center Deployment

## What this project is
A single static HTML file (index.html) with a Supabase backend, being
deployed to GitHub Pages. Database setup script: supabase-setup.sql.

## Progress tracking — check this first, every session
Before doing anything else, check whether DEPLOY_PROGRESS.md exists in
this folder.

- If it exists: read it. It lists which deployment steps are already
  done and which are still pending. Resume from the first pending step.
  Do not redo completed steps, and do not re-ask permission for anything
  already approved and completed in a prior session.
- If it doesn't exist: create it with this checklist before starting
  any actual work:

```
- [ ] Supabase project created
- [ ] supabase-setup.sql run against the project
- [ ] Project URL + anon key retrieved
- [ ] index.html updated with real SUPABASE_URL / SUPABASE_ANON_KEY
- [ ] GitHub repo created
- [ ] index.html pushed to the repo
- [ ] GitHub Pages enabled
- [ ] Live URL confirmed working
```

Check off each box immediately after that step is actually confirmed
done — not in a batch at the end. The file on disk should always
reflect true current state, not stale intentions, in case the session
ends unexpectedly.

## If a usage limit is hit mid-task
1. Before stopping, make sure DEPLOY_PROGRESS.md is fully up to date
   with whatever was just completed, plus one line noting exactly what
   the next action should be.
2. If given rate-limit options, choose "Stop and wait for the limit to
   reset" rather than ending the session outright.
3. When the session resumes (or a new one starts in this folder), read
   DEPLOY_PROGRESS.md first, then continue from the noted next action.
   Don't re-explain the whole plan back — just confirm the state was
   read and proceed directly.

## Usage efficiency
- Prefer targeted edits over rewriting whole files when only part of a
  file needs to change.
- Don't re-read files that haven't changed since they were last read
  in this session.
- Batch related shell commands together instead of running them one at
  a time with a check-in between each.
- Skip restating the full plan after every step — a one-line status
  update is enough unless something went wrong.
- Only pause for confirmation on the two account-creating steps (new
  Supabase project, new GitHub repo). Everything else, just proceed.
