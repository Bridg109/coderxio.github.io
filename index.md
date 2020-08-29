---
layout: default
---

# Projects

[DailyMed API](https://github.com/coderxio/dailymed-api)

# Posts

{% for post in site.posts %}
  <li>
    <span class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</span>

    <strong>
      <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
    </strong>
  </li>
{% endfor %}
