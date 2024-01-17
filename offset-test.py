#!/usr/bin/env python

from datetime import datetime, UTC

now = datetime.timestamp(datetime.now())
offset = (datetime.fromtimestamp(now) - datetime.fromtimestamp(now, UTC).replace(tzinfo=None)).total_seconds()

print(offset)
