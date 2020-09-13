---
layout: page
---

# Organization
{% for user in organization_members %}
  * {{ user.name }}
{% endfor %}

# Projects
{% for repository in site.github.public_repositories %}
  * [{{ repository.name }}]({{ repository.html_url }})
  {% for user in repository.contributors %}
    {{ user.name }}
  {% endfor %}
{% endfor %}
