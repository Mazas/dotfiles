import feedparser

feed = feedparser.parse("https://hnrss.org/frontpage")

size = len(feed.entries) if len(feed.entries) <= 20 else 20

output = ""

for i in range(0, size):
    prefix = "├─ {} ".format(i + 1) if i < size - 1 else "└─ {} ".format(i + 1)
    output = output + prefix + str(feed.entries[i].title) + "\n"

print(output)
