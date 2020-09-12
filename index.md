---
layout: default
---

# Projects

[DailyMed API](https://github.com/coderxio/dailymed-api)

# Posts

{% for tag in site.tags %}
  <h3>{{ tag[0] }}</h3>
  <ul>
    {% for post in tag[1] %}
      <li><a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
{% endfor %}
