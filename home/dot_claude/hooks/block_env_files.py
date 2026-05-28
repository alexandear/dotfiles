#!/usr/bin/env python

# https://gist.github.com/tebeka/b9c197ad5393e348e938498e7984fb26

import json
import sys
from pathlib import Path

data = json.load(sys.stdin)
file_path = data.get('tool_input', {}).get('file_path', '')
name = Path(file_path).name
if name in {'.env', '.envrc'} or name.startswith('.env.') or name.endswith('.env'):
    msg = {
        'continue': False,
        'stopReason': 'Blocked: reading .env/.envrc files is not allowed',
    }
    print(json.dumps(msg))
