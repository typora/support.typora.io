# Modified Date Scripts

This directory contains scripts to automatically add `last_modified_at` fields to Jekyll post front matter based on Git modification history.

## Files

- `update_modified_dates.rb` - Ruby version (more robust)
- `update_modified_dates.sh` - Bash version (broader compatibility)

## Usage

### Ruby Script (Recommended)

```bash
# Run from your Jekyll site root directory
ruby update_modified_dates.rb
```

### Bash Script (Alternative)

```bash
# Run from your Jekyll site root directory
./update_modified_dates.sh
```

## What the Scripts Do

1. **Scan all posts** in the `_posts` directory
2. **Check Git history** to find the last modification date for each file
3. **Compare dates** - only add or update `last_modified_at` if Git modification date is **after** the published date
4. **Preserve newer YAML values** - skip files whose existing `last_modified_at` is already newer than or equal to Git history
5. **Add or update the field** in YAML front matter automatically

## Example

**Before:**
```yaml
---
layout: post
title: Add Custom CSS
author: typora.io
category: how-to
tags: [style, tutorial]
---
```

**After:**
```yaml
---
layout: post
title: Add Custom CSS
author: typora.io
category: how-to
tags: [style, tutorial]
last_modified_at: 2022-07-03
---
```

## Requirements

- Must be run from a Git repository
- Must have a `_posts` directory
- Ruby script requires Ruby with YAML support
- Bash script works on macOS and Linux

## Safety

- **Safe to re-run** - only changes files when Git history provides a newer modified date
- **Preview changes** with `git diff` before committing
- **Only adds or updates dates** when Git modification is after publication date

## Manual Alternative

If you prefer manual control, you can add `last_modified_at: YYYY-MM-DD` to any post's front matter yourself.

The Jekyll layout will automatically display both published and modified dates when this field is present and different from the publication date.
