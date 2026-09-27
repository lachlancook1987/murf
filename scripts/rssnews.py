#!/usr/bin/env python3
import urllib.request
import xml.etree.ElementTree as ET
import datetime
import re
import sys
from email.utils import parsedate_to_datetime

FEEDS = [
    "https://www.coindesk.com/arc/outboundfeeds/rss/",
    "https://cointelegraph.com/rss",
    "https://decrypt.co/feed",
    "https://www.theblock.co/rss.xml",
    "https://cryptoslate.com/feed/",
    "https://www.newsbtc.com/feed/",
    "https://bitcoinist.com/feed/",
]


def main():
    if len(sys.argv) < 3:
        print("Usage: rssnews.py <max_age_hours> <term1> [term2] ...", file=sys.stderr)
        sys.exit(1)

    max_age_hours = float(sys.argv[1])
    terms = sys.argv[2:]
    patterns = [re.compile(r"\b" + re.escape(t) + r"\b", re.IGNORECASE) for t in terms]

    now = datetime.datetime.now(datetime.timezone.utc)
    matches = []
    fetch_failures = []

    for feed_url in FEEDS:
        try:
            req = urllib.request.Request(feed_url, headers={"User-Agent": "Mozilla/5.0"})
            with urllib.request.urlopen(req, timeout=10) as r:
                data = r.read()
            root = ET.fromstring(data)
        except Exception:
            fetch_failures.append(feed_url)
            continue
        for item in root.findall(".//item"):
            title = (item.findtext("title") or "").strip()
            desc = (item.findtext("description") or "").strip()
            pub_raw = item.findtext("pubDate") or ""
            hit = any(p.search(title) for p in patterns) or any(p.search(desc) for p in patterns)
            if not hit:
                continue
            try:
                pub = parsedate_to_datetime(pub_raw)
                if pub.tzinfo is None:
                    pub = pub.replace(tzinfo=datetime.timezone.utc)
            except Exception:
                continue
            age_hours = (now - pub).total_seconds() / 3600
            matches.append((age_hours, title, pub.isoformat(), feed_url))

    if fetch_failures:
        print(f"WARN: {len(fetch_failures)}/{len(FEEDS)} feeds unreachable this call: {fetch_failures}", file=sys.stderr)

    if not matches:
        print(f"RSS: NO COVERAGE FOR {terms}")
        return

    matches.sort(key=lambda m: m[0])
    age_hours, title, pub_iso, source = matches[0]

    if age_hours <= max_age_hours:
        print(f'RSS CATALYST FOUND ({age_hours:.1f}h old, within {max_age_hours}h window): "{title}" | {pub_iso} | {source}')
    else:
        print(f'RSS: STALE ONLY -- freshest match {age_hours:.1f}h old (over {max_age_hours}h window): "{title}" | {pub_iso} | {source}')


if __name__ == "__main__":
    main()
