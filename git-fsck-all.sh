#!/bin/sh
locate "/.git" | grep -E '.git$' | sed -e 's/.git$//' | xargs -n1 -I{} -d \\n bash -c 'cd "{}" ; echo --- "{}" ; git fsck --no-progress --full --strict'
